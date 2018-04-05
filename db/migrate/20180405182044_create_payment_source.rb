class CreatePaymentSource < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_sources do |t|
      t.string :payment_providor, default: "Stripe"
      t.string :card_exp_month
      t.string :card_exp_year
      t.string :card_last4
      t.string :card_brand
      t.references :user, foreign_key: true
    end
  end
end
