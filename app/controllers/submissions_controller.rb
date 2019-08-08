class SubmissionsController < ApplicationController
  before_action :set_submission, only: [:show, :edit, :update, :destroy]

  def index
    @submissions = Submission.all
  end

  def new
    @submission = Submission.new
  end

  def show

  end

  def create
    @submission = Submission.new(submission_params)

    respond_to do |format|
      if @submission.save
        format.html { redirect_to @submission, notice: "Submission was succesfully created"}
      else
        format.html { render :new}
      end
    end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @submission.update(submission_params)
        format.html { redirect_to @submission, notice: 'Submission was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @submission.destroy
      respond_to do |format|
        format.html {redirect_to submissions_url, notice: "Submission was successfully destroyed"}
      end
  end


  private

  def submission_params
    params.require(:submission).permit(:title, :body)
  end

  def set_submission
    @submission = Submission.find(params[:id])
  end
end
