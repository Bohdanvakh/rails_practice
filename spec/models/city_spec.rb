require 'rails_helper'

RSpec.describe Country, type: :model do
  let(:city) { create(:city) }

  describe 'associations' do
    subject { create(:city) }

    it { should belong_to(:country) }
  end

  describe "validations" do
    subject { create(:city) }

    it { should validate_presence_of(:name).with_message("can't be blank") }

    it { should validate_uniqueness_of(:name) }
  end
end
