#!/usr/bin/env ruby
#declare question and answer list

#import ruby csv library
require "csv"

#clear the command line
system("clear")
#ask user for file to load
while true do
	print "Please enter name of QA file to load:
	* command_line_QA
	* string_QA
	* array_QA
	* hash_QA
	: "
	file_name = gets.chomp

	# check input is one of the suggested files
	if ["command_line_QA", "string_QA", "array_QA", "hash_QA"].include?(file_name)
		break
	end
end

system("clear")
#load_file name (assuming in same directory)
question_answer_list = CSV.read(file_name + ".csv")
#determine list question and list answer as separate variables
question_answer_list.each do |list_answer, list_question|
#print question
puts "CLUE: #{list_question}"
# get answer from user and loop if incorrect
loop do
	print "ANSWER: "
	user_answer = gets.chomp
	if user_answer == list_answer.to_s
		puts "Right Answer :-)"
		gets
		break # move to next question
	elsif user_answer == "next"
		break # move to next question
	else
		puts "Wrong Answer :-( try again or type next"
	end
end

system("clear")
end
