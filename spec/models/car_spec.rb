require 'spec_helper'

describe Car do
  it { should validate_presence_of :color }
  it { should validate_presence_of :year }
  it { should validate_presence_of :mileage }

  it { should have_valid(:year).when(1980, 1990, 2005, 2014) }
  it { should_not have_valid(:year).when(1979, 1250,'',2015) }
    
end
