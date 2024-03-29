# frozen_string_literal: true

class Product < ApplicationRecord
  validates_presence_of :description, :price, :weight, :name

  has_many :order_products
end
