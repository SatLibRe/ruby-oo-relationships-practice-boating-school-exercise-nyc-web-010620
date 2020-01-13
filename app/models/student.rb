class Student

attr_reader :first_name

@@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all.push(self)
    end 

    def self.all
        @@all 
    end 

    #come back to 
    def add_boating_test(test_name,test_status,instructor)
        BoatingTest.new(self,test_name,test_status,instructor)
    end 

    def self.find_student(first_name) 
        self.all.find do |student| 
            student.first_name == first_name
        end 
    end 

    def tests 
        BoatingTest.all.select do |test|
            test.student == self
        end 
    end 

    def grade_percentage
      arr = []  
        tests.each do |test|
            if test.test_status == "Passed"
                arr.push(1)
            else 
                arr.push(0)
            end 
        end 
        total = arr.sum do |num|
            num 
        end 
        percentage = (total / arr.length.to_f)
    end 



   

end
