AndresApplication::App.controllers :events do
  

  get :new do
    @event=Event.new
    render 'events/new'
  end

   get :create do
    @event=Event.new
    render 'events/new'
  end


end
