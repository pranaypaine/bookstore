class PublishersController < ApplicationController
  def new
    @page_title = 'Add New Publisher'
    @publisher = Publisher.new
  end

  def create
    @publisher = Publisher.new(publisher_params)
    if @publisher.save
      redirect_to publishers_path
    else
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @publishers = Publisher.all
  end

  def show
  end
  private
    def publisher_params
      params.require(:publisher).permit(:name)
    end
end
