require "open-uri"

file = open("./urls")
lines = file.readlines
lines.each do |line|
  md_path = line.chomp + ".md"
  open md_path do |md|
    w = File.open(md_path.split("/").last, "w")
    w.write md.read
    w.close
  end
end
