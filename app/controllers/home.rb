AndresApplication::App.controllers :home do
  
before do
	@accessible=true
        
  end  

  get :index, :map => '/' do
	
    render 'home/index'
  end
  
end
