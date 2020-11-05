#!/usr/bin/env ruby
#declare question and answer list
question_answer_list = {pwd: "print working directory",
hostname: "my computer's networked name",
mkdir: "make directory",
cd: "change directory",
ls: "list directory",
rmdir: "remove directory",
pushd: "push directory",
popd: "pop directory",
cp: "copy file or directory",
mv: "move file or directory",
less: "page through a file",
cat: "print the whole file",
xargs: "execute arguments",
find: "find files",
grep: "find patterns in files",
man: "read a manual page",
apropos: "find what manual page is appropriate",
env: "look at your environment",
echo: "print some arguments",
export: "export or set a new environment variable",
exit: "exit file or directory",
sudo: "DANGER! become super user DANGER!",
chmod: "change permission modifiers",
chown: "change ownership"}


#clear the command line
system("clear")
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
