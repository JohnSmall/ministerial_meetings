require 'rails_helper'

RSpec.describe "Api::V1::People", type: :request do
  describe "GET /api/v1/people" do
    let(:person){create(:person)}
    it "it returns a 200" do
      get api_v1_person_path(person),headers:{'HTTP_ACCEPT' => "application/vnd.api+json"}
      expect(response).to have_http_status(200)
    end

    it 'should be a json-api response' do
      get api_v1_person_path(person),headers:{'HTTP_ACCEPT' => "application/vnd.api+json"}
      expect(response.body).to be_jsonapi_response_for('people')
    end
  end
end
