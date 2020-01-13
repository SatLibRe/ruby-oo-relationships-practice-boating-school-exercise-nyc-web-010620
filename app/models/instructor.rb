class Instructor

        attr_reader :first_name
        
        @@all = []
        
            def initialize(first_name)
                @first_name = first_name
                @@all.push(self)
            end 
        
            def self.all
                @@all 
            end 

            def tests 
                BoatingTest.all.select do |test|
                    test.instructor == self
                end 
            end 

            def pass_student(student_instance,test_name)
                    tests.each do |test|
                        if test.student == student_instance && test.test_name == test_name
                            test.test_status = "Passed"
                        else 
                            BoatingTest.new(student_instance,test_name,"Passed",self)
                    end 
                end 
            end 
            
            def fail_student(student_instance,test_name)
                tests.each do |test|
                    if test.student == student_instance && test.test_name == test_name
                        test.test_status = "Failed"
                    else 
                        BoatingTest.new(student_instance,test_name,"Failed",self)
                end 
            end 
        end

end
