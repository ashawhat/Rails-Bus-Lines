class LinesController < ApplicationController
  def index
    @lines = Line.all
  end

  def new
    @line = Line.new
  end

  def create
    @line = Line.new(line_params)
    if @line.save
    flash[:notice] = "Line Added."
    redirect_to lines_path
  else
    render 'new'
  end
end

def update
  @line = Line.find(params[:id])
  if @line.update(line_params)
    flash[:notice] = "Line Updated"
    redirect_to line_path(@line)
  else
    render 'edit'
  end

  private
  def line_params
    params.require(:line).permit(:name)
  end
end

