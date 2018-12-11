class ApplicationController < ActionController::API

    def issue_token(data)
        JWT.encode(data, secret)
    end
    
    def get_current_user
        id = decoded_token['id']
        puts "Hello from inside get_current_user: #{id}"
        User.find_by(id: id)
    end
    
    def decoded_token
        puts "HELLO FROM INSIDE DECODED TOKEN: #{request.headers['Authorization']}"
        token = request.headers['Authorization']
        begin
            JWT.decode(token, secret).first
        rescue JWT::DecodeError
            {}
        end
    end
      
    def secret
        ENV["LOCALI_SECRET_KEY"]
    end


end
