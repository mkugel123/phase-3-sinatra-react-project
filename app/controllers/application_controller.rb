class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/waiters" do
    Waiter.all.to_json
  end

  get "/tables" do
    Table.all.to_json
  end

  patch "/tables/:id" do
    table = Table.find(params[:id])
    table.update(occupied: params[:occupied])
    table.to_json
  end

  post "/waiters" do
    waiter = Waiter.create(
      name: params[:name],
      tips: 0.0
    )
    waiter.to_json
  end

  post "/services" do
    service = Service.create(
      tab_total: params[:tabTotal].to_f,
      tip: params[:tabTotal].to_f * params[:tip].to_f,
      waiter_id: params[:waiterId],
      table_id: params[:tableId]
    )

    service.to_json
  end

end
