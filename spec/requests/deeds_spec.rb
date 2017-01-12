require 'rails_helper'

RSpec.describe "Deeds", type: :request do
  describe "GET /deeds" do
    it "works! (now write some real specs)" do
      get deeds_path
      expect(response).to have_http_status(200)
    end
  end
end
