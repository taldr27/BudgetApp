class CreateEntities < ActiveRecord::Migration[7.0]
  def change
    create_table :entities do |t|
      t.string :name
      t.decimal :amount
      t.references :user
      t.references :category, foreign_key: {to_table: 'categories'}

      t.timestamps
    end
  end
end
