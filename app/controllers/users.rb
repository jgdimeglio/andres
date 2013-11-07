AndresApplication::App.controllers :users do
  before do
	@accessible=(not signed_in?)
  end  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end

  get :new, :map => '/register' do
    @user = User.new
    render 'users/new'
  end

  post :create do
      password_confirmation = params[:user][:password_confirmation]
      params[:user].reject!{|k,v| k == 'password_confirmation'}
      if User.find_by_email(params[:user][:email]) == nil
	      if (params[:user][:password] == password_confirmation )
		@user = User.new(params[:user])
		if @user.save
		  flash[:success] = 'User created'
		  redirect '/'
		else
		
		  if @user.crypted_password == nil and params[:user][:password] != ''
                    flash.now[:error] = 'The password must be uppercase, numbers and more than 7 characters'
		    render 'users/new'
		  else
		    flash.now[:error] = 'All fields are mandatory'
		    render 'users/new'
		  end
		end
	      else
		@user = User.new (params[:user])
		flash.now[:error] = 'Passwords do not match'
		render 'users/new'          
	      end
      else
	@user = User.new (params[:user])
	flash.now[:error] = 'Email in use'
	render 'users/new'  
      end
  end

end
