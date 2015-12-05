class HouseholdController < ApplicationController
  def index
  @recallItems = Item.all
  
	
  
 # puts "AHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHh"
  
  end
  
  
	

  def create
	
		
  end

 
  def parse_comments
    
    #do your stuff with comments_from_form here
  end






  

  
  
  
  def list
	#@recallItems = Item.all
  end
  
  def show
	@recallItems = Item.first
  end
  
  def iterate
	
	
	param1 = params[:param1] # "value1"
	param2 = params[:param2] # "value2"
	
	
  end
end
