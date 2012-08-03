class StudentsController < ApplicationController
  def index
    if !current_student.nil?
      if current_student.email == "admin@me.com"
        render :text=>"adminstrator", :layout=>true
      else
        render :text=> "student", :layout=>true
      end
    end
  end
  def enquires

  @student=Student.all
  end
  end

