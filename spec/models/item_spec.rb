require 'spec_helper'

describe Item do
  
  it { should have_valid(:name).when("steak", "bread") }
  it { should_not have_valid(:name).when("", nil) }

  it { should have_valid(:description).when("this is good stuff", "cool") }
  it { should_not have_valid(:description).when("", nil) }

  it { should have_valid(:quanity).when(9,100) }
  it { should_not have_valid(:quanity).when(nil, '', "this") }

end
