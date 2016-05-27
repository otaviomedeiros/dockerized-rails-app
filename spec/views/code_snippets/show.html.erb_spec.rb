require 'rails_helper'

RSpec.describe "code_snippets/show", type: :view do
  before(:each) do
    @code_snippet = assign(:code_snippet, CodeSnippet.create!(
      :description => "Description",
      :code => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/MyText/)
  end
end
