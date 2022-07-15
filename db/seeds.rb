# frozen_string_literal: true

if Admin.all.empty?
  Admin.create(email: 'yumi@yumi.com', password: 123456, password_confirmation: 123456)
end
