require 'spec_helper'

describe "comments/new" do
  before(:each) do
    assign(:comment, stub_model(Comment,
      :user => nil,
      :question => nil,
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new comment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", comments_path, "post" do
      assert_select "input#comment_user[name=?]", "comment[user]"
      assert_select "input#comment_question[name=?]", "comment[question]"
      assert_select "textarea#comment_body[name=?]", "comment[body]"
    end
  end
end
