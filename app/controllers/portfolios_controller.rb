class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :show, :update, :destroy]
  layout 'portfolio'
  access all: [:show, :index, :ylia, :fmab], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all
  
  
  def index
    @portfolio_items = Portfolio.by_position
  end
  
  def new
    @portfolio_item = Portfolio.new
  end

  
  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your post has been submitted!' }
      else
        format.html { render :new }
      end
    end
  end
  
  def edit

  end
  
  def update
    
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
         format.html { redirect_to portfolios_path, notice: 'Blog was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
  
  def show
    @page_title = "OwO what's this"
  end
  
  def destroy
    # Perform lookup
        @portfolio_item = Portfolio.find(params[:id]) 
       
       # Destroy the post 
      @portfolio_item.destroy
      
      #Redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully deleted.' }
    end
  end
  
  def fmab
    @fmab_portfolio_item = Portfolio.fmab
  end
  
  def ylia
    @ylia_portfolio_item = Portfolio.ylia
  end
  
  def set_portfolio_item
     @portfolio_item = Portfolio.find(params[:id]) 
  end
  
  private
  
  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, [:name])
  end

end


