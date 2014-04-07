require 'spec_helper'

describe Line do
  it { validate_presence_of :name }
  it { have_many :stops }
  it { have_many :stations }
  it { belong_to :stops }

end
