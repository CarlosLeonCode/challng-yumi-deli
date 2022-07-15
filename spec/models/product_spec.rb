require 'rails_helper'

RSpec.describe Product, type: :model do
  context 'model validations' do
    describe 'columns' do
      it { should validate_presence_of(:description) }
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:price) }
      it { should validate_presence_of(:weight) }
    end

    describe 'relations' do
      it { should have_many(:order_products) }
    end
  end
end
