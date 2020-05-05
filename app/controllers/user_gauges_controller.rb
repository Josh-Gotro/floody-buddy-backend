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
