require 'find'

Find.find('/Users/masui') do |fpath|
  if File.file?(fpath) && !File.symlink?(fpath) then
    puts File.size(fpath).to_s + " "  + fpath
  end
end
