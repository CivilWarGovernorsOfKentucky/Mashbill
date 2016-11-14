require 'rails_helper'

RSpec.describe "RaceDescriptions", type: :request do
  describe "GET /race_descriptions" do
    it "works! (now write some real specs)" do
      get race_descriptions_path
      expect(response).to have_http_status(200)
    end
  end
end
