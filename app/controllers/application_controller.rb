class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/waiters" do
    Waiter.all.to_json
  end

  get "/waiters/:id/tips" do
    waiter = Waiter.find(params[:id])

    waiter.tips.to_json
  end

  get "/tables" do
    Table.all.to_json
  end

  patch "/tables/:id" do
    table = Table.find(params[:id])
    table.update(occupied: params[:occupied])
    table.to_json
  end

  get "/services" do
    Service.all.to_json
  end

  post "/services" do

    tip = params[:tabTotal].to_f * params[:tip].to_f

    service = Service.create(
      tab_total: params[:tabTotal].to_f,
      tip: tip.round(2),
      waiter_id: params[:waiterId],
      table_id: params[:tableId]
    )

    service.to_json
  end

  delete "/services/:id" do
    service = Service.find(params[:id])
    service.destroy

    service.to_json
  end

  patch "/services/:id" do
    service = Service.find(params[:id])
    service.update(
      tab_total: params[:tabTotal].to_f,
      tip: params[:tip].to_f
    )
    service.to_json
  end

end
