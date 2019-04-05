require 'rails_helper'
require 'spec_helper'

RSpec.describe Note, type: :model do
  context "a note is valid with all attributes" do
    before do
      note = create(:note)
    end

    it {should validate_presence_of(:title)}
    it {should validate_presence_of(:body)}
  end

end
