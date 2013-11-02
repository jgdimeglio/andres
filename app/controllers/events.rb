AndresApplication::App.controllers :events do
  

  get :new do
    @event=Event.new
    render 'events/new'
  end

   post :create do
    @event = Event.new(params[:event])
    @event.owner = current_user
    if @event.save
      flash[:success] = 'Event created'
      redirect '/events/new'
    else
      flash.now[:error] = 'The start date field is mandatory'
      redirect '/events/new'
    end  
  end

  get :my do
    @events = Event.find_by_owner(current_user)
    render 'events/my_events'
  end 

end
