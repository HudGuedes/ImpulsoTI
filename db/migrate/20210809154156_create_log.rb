class CreateLog < ActiveRecord::Migration[6.1]
  def change
    create_table :logs do |t|
      t.references :user
      t.references :product
      t.integer :amount
      t.integer :operation_cd, null: false
      t.timestamps
    end
  end
end
