class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
    add_index :suppliers, :name
    add_index :suppliers, :address
  end
end
