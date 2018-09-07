files = Dir.entries(".")
files.select!{
	|f|
	f.include? ".tex"
}

files.each{
	|f|
	file = File.open(f).read
	file = file + "\\end{multicols}{2}"
	out = File.open(f, "w")
	out.puts file.strip
	out.close
}