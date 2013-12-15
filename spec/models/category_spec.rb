require 'spec_helper'

describe Category do
  it { should belong_to(:parent).class_name(:Category) }
end
