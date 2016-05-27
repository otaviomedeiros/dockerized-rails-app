require "rails_helper"

RSpec.describe CodeSnippetsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/code_snippets").to route_to("code_snippets#index")
    end

    it "routes to #new" do
      expect(:get => "/code_snippets/new").to route_to("code_snippets#new")
    end

    it "routes to #show" do
      expect(:get => "/code_snippets/1").to route_to("code_snippets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/code_snippets/1/edit").to route_to("code_snippets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/code_snippets").to route_to("code_snippets#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/code_snippets/1").to route_to("code_snippets#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/code_snippets/1").to route_to("code_snippets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/code_snippets/1").to route_to("code_snippets#destroy", :id => "1")
    end

  end
end
