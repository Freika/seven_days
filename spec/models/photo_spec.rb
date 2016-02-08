require 'rails_helper'

describe Photo, type: :model do
  it { should belong_to :user }
end
