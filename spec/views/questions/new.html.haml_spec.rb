require 'spec_helper'

describe "questions/new" do
  before(:each) do
    assign(:question, stub_model(Question,
      :user => nil,
      :category => nil,
      :title => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new question form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", questions_path, "post" do
      assert_select "input#question_user[name=?]", "question[user]"
      assert_select "input#question_category[name=?]", "question[category]"
      assert_select "input#question_title[name=?]", "question[title]"
      assert_select "textarea#question_description[name=?]", "question[description]"
    end
  end
end
