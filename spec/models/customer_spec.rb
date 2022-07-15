require 'rails_helper'

RSpec.describe Customer, type: :model do
  context 'model validations' do
    describe 'columns' do
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:phone) }
    end

    describe 'relations' do
      it { should have_many(:primary_shipping_address) }
    end
  end
end
