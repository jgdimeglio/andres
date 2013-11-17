AndresApplication::App.controllers :adverts do
  
  before do
	@accessible= signed_in_admin?
      
  end  

  get :new do
    @advert=Advert.new
    render 'adverts/new'
  end

   post :create do
    @advert = Advert.new(params[:advert])
    if @advert.save
      flash[:success] = 'Advertising created'
      redirect '/adverts/show'
    else
      flash[:error] = 'All fields are mandatory'
      redirect '/adverts/new'
    end  
  end

  get :show do
    @adverts = Advert.all()
    render 'adverts/show'
  end 

  get :delete,:with =>:advert_id do
    @advert = Advert.get(params[:advert_id])
    @advert.destroy
    flash[:success] = 'Advertising successfully deleted'
    redirect 'adverts/show'
  end 
 
  post :update, :with => :advert_id do
    @advert = Advert.get(params[:advert_id])
    @advert.update(params[:advert])
    if @advert.save
      flash[:success] = 'Advertising updated'
      redirect 'adverts/show'
    else
      flash[:error] = 'All fields are mandatory'
      redirect '/adverts/edit/'+params[:advert_id]
    end  
  end

   get :edit, :with => :advert_id do
    @advert = Advert.get(params[:advert_id])
    render 'adverts/edit'
  end

end
