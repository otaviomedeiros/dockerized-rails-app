require 'rails_helper'

RSpec.describe "code_snippets/index", type: :view do
  before(:each) do
    assign(:code_snippets, [
      CodeSnippet.create!(
        :description => "Description",
        :code => "MyText"
      ),
      CodeSnippet.create!(
        :description => "Description",
        :code => "MyText"
      )
    ])
  end

  it "renders a list of code_snippets" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
