class StudentsController < ApplicationController

    layout 'admin'
    
    before_action :set_student, only: %i[show edit update destroy]
    #  helper_method create an method for views and action as well. it is same like create an method in
    #  application_helper file.
    helper_method :formate_date

    def index
        @students = Student.all
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            redirect_to students_path, notice: "Student has been created successfully..!"
        else
            render :new
        end
    end

    def show
        # we create set_student method to get student details
    end

    def edit
        # we create set_student method to get student details
        # date = formate_date(@student.date_of_birth)
    end

    def update
        if @student.update(student_params)
            redirect_to student_path(@student), notice: "Student has been updated successfully..!"
        else
            render :edit
        end
    end

    def destroy
        @student.destroy
        redirect_to students_path, notice: "Student has been deleted successfully..!"
    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name, :email, :city, :date_of_birth)
    end

    def set_student
        @student = Student.find(params[:id])
    end

    def formate_date(date)
        date.strftime('%A, %b %d, %Y') if date.present?
    end
end