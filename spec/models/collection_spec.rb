require 'spec_helper'

describe Collection do
  it { should have_many(:songs) }
end
