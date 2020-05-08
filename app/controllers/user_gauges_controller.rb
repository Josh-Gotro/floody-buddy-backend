class UserGaugesController < ApplicationController
    
    def index
        user_gauges = UserGauge.all
        render json: user_gauges, include: [:user, :gauge]
    end
    
    def show
        usergauge = UserGauge.find_by(id: params[:id])
        if usergauge
            render json: usergauge
        else
            render json: {message: "sorry friend, no info here"}
        end
    end

    def new
        user_gauge = UserGauge.new
    end

    def create 
        user_gauge = UserGauge.create({gauge_id: params[:gauge_id], user_id: params[:user_id]})
        render json: user_gauge
    end
    
    def destroy
        usergauge = UserGauge.find_by({id: params[:id]}) 
        usergauge.destroy
    end
    
end
