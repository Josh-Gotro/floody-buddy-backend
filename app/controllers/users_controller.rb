class UsersController < ApplicationController
    
    def index
        users = User.all
        render json: users, include: [:gauges]
    end
    
    def show
        user = User.find_by(id: params[:id])
        
        if user
            render json: {id: user.id, name: user.name, password: user.password, gauges: user.gauges } 
        else 
            render json: {message: 'fuck off bitch'}
        end
    end
    
end
