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
            render json: {message: 'no record available'}
        end
    end
    
    def new
        user = User.new
    end
    
    def create
        user = User.create({name: params[:name], password: params[:password]})
        render json: user
    end
    
    def destroy
        user = User.find_by(id: params[:id])
        user.destroy
    end
    
    
    
end
