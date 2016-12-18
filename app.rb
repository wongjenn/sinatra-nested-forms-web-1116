require './environment'

module FormsLab
  class App < Sinatra::Base

    get "/" do
      erb :"pirates/index"
    end

    get "/new" do
      erb :"pirates/new"
    end

    post "/pirates" do
      Ship.clear
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship|
        Ship.new(ship)
      end
      @ships = Ship.all
      erb :"pirates/show"
    end

  end
end
