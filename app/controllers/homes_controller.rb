class HomesController < ApplicationController

  def index
  	@courses = Course.order("student_num DESC")
  	len = 5
  	if(@courses.length < len)
	  	len = @course.length
	end 
  	@top_courses = Array.new
	  (1..len).each do |i|
	  	@top_courses.push(@courses[i-1].course_code+" "+@courses[i-1].name+" "+@courses[i-1].teacher.name)
	  end
  end

end
