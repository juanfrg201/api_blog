class HealthController < ApplicationController
    def health #end point
        render json: {api: 'OK'}, status: :ok
    end
end