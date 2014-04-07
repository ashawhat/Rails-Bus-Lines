require 'spec_helper'

describe Station do
  it { validate_presence_of :name }
  it { have_many :stops }
  it { have_many :lines }
  it { belong_to :stops }

end
