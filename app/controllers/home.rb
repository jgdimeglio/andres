AndresApplication::App.controllers :home do
  
before do
	@accessible=true
        @advert = Advert.find_current()
  end  

  get :index, :map => '/' do
	
    render 'home/index'
  end
  
end
