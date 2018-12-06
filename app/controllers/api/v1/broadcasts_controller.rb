class Api::V1::BroadcastsController < ApplicationController

    def index 
        # @pi_names = PiName.all(:order => 'pi_names.last_name DESC')
        @broadcasts = Broadcast.all
        render json: @broadcasts
    end 
    
    
    def create
        puts "HELLLLOOOOOO FROOOOM CREATE: #{params}"
        @broadcast = Broadcast.new(name: params[:name], code: params[:code], broadcaster_id: params[:broadcaster_id])
        if @broadcast.save 
            render json: @broadcast
        else
            render json: {error: "broadcast could not be created!"}, status: 400
        end
    end
    
    
    def show 
        @broadcast = Broadcast.find_by(id: params[:id])
        if @broadcast
          render json: @broadcast
        else 
          render json: {error: "broadcast not found"}, status: 404
        end
    end

    
    def update
        @broadcast = Broadcast.find_by(id: params[:id])
        if @broadcast.update(saved: params[:saved])
          render json: @broadcast
        else 
          render json: {error: "broadcast not found"}, status: 404
        end 
    end

    def get_last_broadcast
        @broadcast = Broadcast.last
        render json: @broadcast
    end

    def get_broadcastbypin 
        puts "HELLLLOOOOOO FROOOOM GET_BROADCAST_BY_PIN ROUTE: #{params}"
        @broadcast = Broadcast.find_by(code: params[:code])
        if @broadcast
            render json: @broadcast
        else
            render json: {error: "broadcast not found"}, status: 404
        end
    end


    def destroy
        @broadcast = Broadcast.find(params[:id])
        @broadcast.destroy
    end

    private 

    def user_params 
        params.require(:broadcast).permit(:name, :pin, :broadcaster_id, :saved, :code)
    end 

    

end


