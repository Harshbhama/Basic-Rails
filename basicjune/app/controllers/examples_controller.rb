class ExamplesController < ApplicationController

  before_action :set_example, only: [:edit, :update, :delete]

  

  def index

  	@example = Example.all
    # @abc = Example.last.id
      if session[:example_id]
        @abc = Example.find(session[:example_id])
      end

  end


  def new

  	@example = Example.new


  end


  def create

  	Example.create(
      example_params

  		)
  	redirect_to action: 'index'


  end

  def edit

  		

  end

  def update
  		
  		
  		@example.update(
       example_params

  			)
  		redirect_to action:'index'



  end

  def delete
      

      @example.destroy

      redirect_to action: 'index'

  end


  def example_params
    params.require(:example).permit(:name, :designation, :password)

  end
  
  def create_session
     
     u = Example.find_by(designation: params[:designation], password: params[:password])
      session[:example_id]= u.id
     redirect_to action: 'index'


  end

  def sign_in



  end

  def sign_out

    if !session[:example_id].blank?
      session.delete(:example_id)
    end
    redirect_to action: 'index'

  end



   private
  def set_example
  
  @example = Example.find(params[:id])  

  end


end

  
