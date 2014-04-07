require 'spec_helper'

describe Stop do
  it { belong_to :line }
  it { belong_to :station }
end
