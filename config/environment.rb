require "pry"
require 'bundler/setup'
Bundler.require
require_all 'app'

s1 = Student.new("Miles")
s2 = Student.new("Jerry")
s3 = Student.new("Evan")

i1 = Instructor.new("Goog")
i2 = Instructor.new("Terg")
i3 = Instructor.new("Boogan")

bt1 = BoatingTest.new(s1,"Test 1","Failed",i1)
bt2 = BoatingTest.new(s1,"Test 2","Passed",i2)
bt3 = BoatingTest.new(s1,"Test 3","Passed",i3)



binding.pry 
