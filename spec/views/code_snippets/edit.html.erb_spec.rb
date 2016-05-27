require 'rails_helper'

RSpec.describe "code_snippets/edit", type: :view do
  before(:each) do
    @code_snippet = assign(:code_snippet, CodeSnippet.create!(
      :description => "MyString",
      :code => "MyText"
    ))
  end

  it "renders the edit code_snippet form" do
    render

    assert_select "form[action=?][method=?]", code_snippet_path(@code_snippet), "post" do

      assert_select "input#code_snippet_description[name=?]", "code_snippet[description]"

      assert_select "textarea#code_snippet_code[name=?]", "code_snippet[code]"
    end
  end
end
