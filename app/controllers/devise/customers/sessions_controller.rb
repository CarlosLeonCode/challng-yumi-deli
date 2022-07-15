# frozen_string_literal: true

module Devise
  class Customers::SessionsController < Devise::SessionsController
    include AccessorConcern
  end
end
