require 'spec_helper'

describe User do
  it "has a valid factory" do
    FactoryGirl.create(:user).should be_valid
  end
  it "is invalid without an email" do
    FactoryGirl.build(:user, email: nil).should_not be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:user, name: nil).should_not be_valid
  end
  it "is invalid without a password" do
    FactoryGirl.build(:user, password: nil).should_not be_valid
  end
  it "is invalid without a password_confirmation" do
    FactoryGirl.build(:user, password_confirmation: nil).should_not be_valid
  end
end
