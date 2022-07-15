require 'rails_helper'

RSpec.describe Order, type: :model do
  context 'model validations' do
    describe 'columns' do
      it { should validate_presence_of(:order_number) }
      it { should validate_presence_of(:payment_type) }
      it { should validate_presence_of(:total_order_value) }
    end

    describe 'enums definitions' do
      it { should define_enum_for(:payment_type).with_values([:cash, :credit, :check, :other]) }
    end

    describe 'relations' do
      it { should have_many(:order_products) }
      it { should belong_to(:customer) }
      it { should belong_to(:primary_shipping_address) }
    end
  end
end
