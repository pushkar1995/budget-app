class CreateCategoryPayments < ActiveRecord::Migration[7.1]
  def change
    create_table :category_payments do |t|

      t.timestamps
    end
  end
end
