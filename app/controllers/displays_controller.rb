class DisplaysController < ApplicationController
  def new
  end

  def index
    @displays = Display.all
    # @displays = Display.paginate(:page => params[:page], :per_page => 2)
    # @displays = Display.search(params[:search])
  end
  def show
    @display = Display.find(params[:id])
  end

  # def create
  #   @display = Display.new(display_params)
  #   @display.save
  #   redirect_to @display
  # end

  def create
    @display = Display.new(display_params)

    if @display.save
      redirect_to @display
    else
      render 'new'
    end
  end

  def update
    @display = Display.find(params[:id])
    if @display.update(display_params)
      redirect_to @display
    else
      render 'edit'
    end
  end

  def destroy
    @display = Display.find(params[:id])
    @display.destroy

    redirect_to displays_path
end

    def task

    end

  private
    def display_params
      params.require(:display).permit(:name, :email, :department_name, :message)
    end
end
