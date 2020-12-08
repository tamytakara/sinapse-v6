class Api::LoginController < ApplicationController
    skip_before_action :verify_authenticity_token

    def login
        username = params[:username]
        password = params[:password]

        user = User.where("username": username).first
        
        return render json: {}, status: 400 if !user

        return render json: {}, status: 404 if user.password != password

        
        if user.type=="Vestibulando"
            return render json: user.vestibulando_infos.to_json 
        else    
            vestibulares = user.admission_exams
            render json: user.universitario_infos.to_json
        end
    end
end