class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to root_path, notice: 'Success!'
    else
      render 'new'
    end
  end

  def show
    @author = Author.find(params[:id])
  end

  private

  # see https://edgeapi.rubyonrails.org/classes/ActionController/StrongParameters.html
  def author_params
    params.require(:author).permit(:first_name, :last_name, :homepage)
  end
end
