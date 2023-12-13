require 'rails_helper'

RSpec.describe Country, type: :model do
  let(:country) { create(:country) }

  describe "validations" do
    subject { create(:country) }

    it { should validate_presence_of(:name).with_message("can't be blank") }
    it { should validate_presence_of(:name_eng).with_message("can't be blank") }
    it { should validate_presence_of(:code).with_message("can't be blank") }

    it { should validate_uniqueness_of(:name) }
    it { should validate_uniqueness_of(:name_eng) }
    it { should validate_uniqueness_of(:code) }
  end
end
