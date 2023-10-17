class Device < ApplicationRecord
  belongs_to :employee, optional: true
  belongs_to :catigory
  belongs_to :manufacturer
end
