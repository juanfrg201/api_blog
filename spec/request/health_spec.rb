#In this part is all the test of the end points
require "rails_helper" #include all the configartion of RSPEC


#Define the test , 
RSpec.describe "Health endpoint", type: :request do

    describe "GET /health" do
        before { get '/health' }  #this is for describe the actions before execute this method

        it "should return OK" do  #this test will return ok
            payload = JSON.parse(response.body)
            expect(payload).not_to be_empty   
            expect(payload['api']).to eq('OK')
        end

        it "should return status code 200" do  #this test will return status code 200
            expect(response).to have_http_status(200)
        end
    end
end