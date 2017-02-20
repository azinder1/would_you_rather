require 'rails_helper'

describe Question do
  it { should validate_presence_of :option1}
  it { should validate_presence_of :option2}
end
