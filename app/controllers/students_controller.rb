class StudentsController < ApplicationController
  
  #This method will talk to the database and render all students onto the index page
  def index
    @students = Student.all
  end

  #This method shows one student based on the id
  def show
    @student = Student.find(params[:id])
  end

  
  def activate
    @student = Student.find(params[:id])
    @student.active=!@student.active
    @student.save
    redirect_to student_path(@student)
  end

 
end