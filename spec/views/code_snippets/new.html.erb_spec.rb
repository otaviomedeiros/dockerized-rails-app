require 'rails_helper'

RSpec.describe "code_snippets/new", type: :view do
  before(:each) do
    assign(:code_snippet, CodeSnippet.new(
      :description => "MyString",
      :code => "MyText"
    ))
  end

  it "renders new code_snippet form" do
    render

    assert_select "form[action=?][method=?]", code_snippets_path, "post" do

      assert_select "input#code_snippet_description[name=?]", "code_snippet[description]"

      assert_select "textarea#code_snippet_code[name=?]", "code_snippet[code]"
    end
  end
end
