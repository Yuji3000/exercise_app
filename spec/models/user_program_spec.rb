require 'rails_helper'

RSpec.describe UserProgram, type: :model do
  it {should belong_to(:user)}
  it {should belong_to(:program)}
end
