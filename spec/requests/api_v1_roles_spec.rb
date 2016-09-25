require 'rails_helper'

RSpec.describe "Api::V1:Roles", type: :request do
  describe "GET /api/v1/roles" do
      let(:role){create(:role)}
    it "returns a 200" do
      get api_v1_role_path(role),xhr: true
      expect(response).to have_http_status(200)
    end

    it 'returns a JSON-API package' do
      get api_v1_role_path(role),xhr: true
      expect(response.body).to be_jsonapi_response_for('roles')
      expect(response.headers['Location']).to match(/\/api\/v1\/roles\/\d+$/)
    end
  end
  describe "POST /api/v1/roles" do

    it "creates a role" do
      post "/api/v1/roles", {
        params: {
          data: {
            type: 'roles',
            attributes: {
              name: 'test role'
            }
          }
        },
      }
      expect(response.status).to eq(201)
      expect(response.body).to be_jsonapi_response_for('roles')
      expect(response.headers['Location']).to match(/\/api\/v1\/roles\/\d+$/)
    end
  end

  describe "PATCH /api/v1/roles" do
    let(:role){create(:role)}
    it 'should return a 200 code' do
      put "/api/v1/roles/#{role.id}", {
        params: {
          data: {
            type: 'roles',
            id: role.id,
            attributes: {
              name: 'testxx role'
            }
          }
        },
      }
      expect(response).to have_http_status(200)
    end
  end
end

