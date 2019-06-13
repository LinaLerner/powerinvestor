class Order < ApplicationRecord
  belongs_to :user
  monetize :amount_cents
  belongs_to :project

  def clean_amount
    return self.amount_cents / 100
  end
end
