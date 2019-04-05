require 'rails_helper'
require 'spec_helper'

RSpec.describe Note, type: :model do
  context "a note is valid with all attributes" do
    before do
      create(:note)
    end

    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:body)}
  end

    it "is not valid without a title" do
      note = build(:note, title: nil, body: "A body")
      expect(note).to_not be_valid
    end

    it "is not valid without a body" do
      note = build(:note, title: "A title", body: nil)
      expect(note).to_not be_valid
    end

end
