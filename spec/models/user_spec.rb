require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  context "a user is valid with all attributes" do
    before do
      user = create(:user)
    end

    it {should validate_presence_of(:first_name)}
    it {should validate_presence_of(:last_name)}
    it {should validate_presence_of(:email)}
  end

    it "is not valid without a first name" do
      user = build(:user, first_name: nil, last_name: "Doe", email: "jane@doe.com")
      expect(user).to_not be_valid
    end

    it "is not valid without a last name" do
      user = build(:user, first_name: "Jane", last_name: nil, email: "jane@doe.com")
      expect(user).to_not be_valid
    end

    it "is not valid without an email" do
      user = build(:user, first_name: "Jane", last_name: "Doe", email: nil)
      expect(user).to_not be_valid
    end

end
