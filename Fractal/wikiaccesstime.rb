#!/usr/local/bin/ruby

require 'wiki'
require 'config'

wiki = Wiki.new(PimConfig)

wiki.each { |w|
  next if w.type == 'BBS'
  access = w.file('access')
  a = []
  begin
    File.open(access){ |f|
      f.each { |l|
        if l =~ /^\d{14}/ then
          puts $&
#          a.push $&
        end
      }
#      puts "#{a.length} #{w.title}"
    }
  rescue
  end
}

