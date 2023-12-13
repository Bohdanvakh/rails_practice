require 'rails_helper'

RSpec.describe Country, type: :model do
  let(:customer) { create(:customer) }

  describe 'associations' do
    subject { create(:customer) }

    it { should belong_to(:city) }
  end

  describe "validations" do
    subject { create(:customer) }

    it { should validate_presence_of(:name).with_message("can't be blank") }
    it { should validate_presence_of(:address).with_message("can't be blank") }
  end
end
