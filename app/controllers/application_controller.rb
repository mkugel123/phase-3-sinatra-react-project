class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/waiters/names" do
    names = Waiter.pluck(:name)
    names.to_json
  end

  post "/waiters" do
    waiter = Waiter.create(
      name: params[:name],
      tips: 0.0
    )
    waiter.to_json
  end

end
