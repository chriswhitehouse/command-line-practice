#!/usr/bin/env ruby
#declare question and answer list	
question_answer_list = {"pwd": "print working directory"}
#determine list question and list answer as seperate variables
question_answer_list.each do |list_answer, list_question|
#print question
puts "What command will achieve #{list_question}"
#get answer from user
puts "Enter you answer below:"
user_answer = gets.chomp
#if the answer is correct
if user_answer == list_answer.to_s
#print Correct Answer :-)
	puts "Right Answer! :-)"
#if the answer is wrong
else
#print wrong answer :-(
	puts "Wrong Answer :-("
end
end
