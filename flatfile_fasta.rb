require 'rubygems'
require 'bio'
#Outputs a parsed file that includes the definition, the sequence and its length
#Input must be in a ".fasta" format

ff = Bio::FlatFile.new(Bio::FastaFormat, ARGF)
output = File.open('fasta_parse.txt', 'w')
ff.each_entry do |f|
	output.puts "definition : " + f.definition
	output.puts "nalen      : " + f.nalen.to_s
  	output.puts "naseq      : " + f.naseq
end