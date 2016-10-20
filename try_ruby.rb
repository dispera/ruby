Dir.entries "/"

Dir["/*.txt"]

FileUtils.cp('/comics.txt', '/Home/comics.txt')

=begin
rescue To add your own comic to the list, let's open the file in append mode, which we indicate with the "a" parameter. This will allow us to put new stuff at the end of the file.
Start by entering this code: 	
=end
File.open("/Home/comics.txt", "a") do |f| => e

print File.read("/Home/comics.txt")

File.mtime("/Home/comics.txt")

#########

def load_­comics( path )­
	comics = {}
	File.forea­ch(path) do |line­|
		name,url = line.­split(': ')
		comics[nam­e] = url.s­trip
	end
	comics
end

#######
comics = load_­comics('/c­omics.txt'­)


