class GaugesController < ApplicationController
    
    def index
        gauges = Gauge.all
        render json: gauges, only: [:id, :flood_stage, :water_level, :water_flow]
    end
    
    def show
        gauge = Gauge.find_by(id: params[:id])
        
        if gauge
            render json: {id: gauge.id, flood_stage: gauge.flood_stage, water_level: gauge.water_level, water_flow: gauge.water_flow} 
        else 
            render json: {message: 'there is no guage with that id in the database'}
        end
    end
end
