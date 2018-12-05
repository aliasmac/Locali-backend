class Api::V1::MessagesController < ApplicationController

    def create
        @message = Message.new(content: params[:content], geofence: params[:geofence], broadcast_id: params[:broadcast_id])
        if @message.save 
            render json: @message
        else
            render json: {error: "message could not be created!"}, status: 400
        end
    end
       
    def show 
        @message = Message.find_by(id: params[:id])
        if @user
          render json: @message
        else 
          render json: {error: "message not found"}, status: 404
        end
    end

    def destroy
        @message = Message.find(params[:id])
        @message.destroy
    end

    def update 
        @message = Message.find(params[:id])
        @message.update(content: params[:content])
        render json: @message
    end 

    private 

    def user_params 
        params.require(:message).permit(:content, :broadcast_id, :geofence, :selected)
    end 

end

