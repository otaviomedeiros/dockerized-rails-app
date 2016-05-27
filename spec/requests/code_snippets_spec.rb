require 'rails_helper'

RSpec.describe "CodeSnippets", type: :request do
  describe "GET /code_snippets" do
    it "works! (now write some real specs)" do
      get code_snippets_path
      expect(response).to have_http_status(200)
    end
  end
end
