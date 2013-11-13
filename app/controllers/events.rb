AndresApplication::App.controllers :events do
  
  before do
	@accessible= signed_in?
      
  end  

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
      flash[:error] = 'Invalid event'
      redirect '/events/new'
    end  
  end

  get :my do
    @events = Event.find_by_owner(current_user)
    render 'events/my_events'
  end 

  get :comment, :with =>:event_id do
    @event = Event.get(params[:event_id])
    render 'events/comment'
  end 

end
