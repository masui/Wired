# -*- coding: utf-8 -*-
#
# GAで8-Queenを解く!
#
QUEENS = 20

class Queens
  POPULATION = 4000

  attr_reader :solution

  def randomgene
    (0...QUEENS).collect {
      rand(QUEENS)
    }
  end

  def initialize
    @genes = []
    POPULATION.times {
      @genes << randomgene
    }
    File.delete("average.log") if File.exist?("average.log")
    File.delete("best.log") if File.exist?("best.log")
  end

  def evaluateone(gene)
    collisions = 0
    v = {}
    (0...QUEENS).each { |i|
      collisions += 1 if v[gene[i]]
      v[gene[i]] = ''
    }
    v = {}
    (0...QUEENS).each { |i|
      collisions += 1 if v[i+gene[i]]
      v[i+gene[i]] = ''
    }
    v = {}
    (0...QUEENS).each { |i|
      collisions += 1 if v[i-gene[i]]
      v[i-gene[i]] = ''
    }
    if collisions == 0 then
      @solution = gene
    end
    # 1.0 / (1.0 + collisions)
    collisions
  end

  def evaluate
    @val = []
    @totalval = 0.0
    totalcollisions = 0.0
    best = 100.0
    (0...POPULATION).each { |i|
      collisions = evaluateone(@genes[i])
      @val[i] = 1.0 / (1.0 + collisions)
      @totalval += @val[i]
      totalcollisions += collisions
      best = collisions if collisions < best
    }
    File.open("average.log","a"){ |f|
      f.puts totalcollisions.to_f / POPULATION
    }
    File.open("best.log","a"){ |f|
      f.puts best.to_f
    }
  end
  
  def selectone
    r = rand(10000) / 10000.0
    v = 0.0
    (0...POPULATION).each { |i|
      if r >= v && r < v + @val[i] / @totalval then
        return @genes[i].dup
      end
      v += @val[i] / @totalval
    }
  end

  def dump
    (0..10).each { |i|
      puts @genes[i].join(' ')
    }
    puts "totalval = #{@totalval}"
  end

  def calc
    newgenes = []
    while newgenes.length < POPULATION do
      if rand(10000) < 6000 then # 交叉
        a = selectone
        b = selectone
        p1 = rand(QUEENS)
        p2 = rand(QUEENS)
        if p2 < p1 then
          tmp = p2
          p2 = p1
          p1 = tmp
        end
        (p1..p2).each { |i|
          tmp = a[i]
          a[i] = b[i]
          b[i] = tmp
        }
        newgenes << a
        newgenes << b
      elsif rand(10000) < 600 then # 突然変異
        a = selectone
        a[rand(QUEENS)] = rand(QUEENS)
        newgenes << a
      else
        newgenes << selectone
      end
    end
    @genes = newgenes
  end
end

queens = Queens.new
while true do 
  queens.evaluate
  queens.dump
  queens.calc
  break if queens.solution
end

(0...QUEENS).each { |i|
  s = (0...QUEENS).collect { '.' }
  s[queens.solution[i]] = 'Q'
  puts s.join(' ')
}

  


