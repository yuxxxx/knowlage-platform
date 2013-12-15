require 'spec_helper'

describe User do
  it { should have_many(:comments) }
  it { should have_many(:questions) }

  describe "#answer?" do
    context "set role 'answer'" do
      subject { User.new(role: "answer") }
      it { should be_answer }
    end
    context "not set role" do
      subject { User.new }
      it { should_not be_answer }
    end
  end
end
