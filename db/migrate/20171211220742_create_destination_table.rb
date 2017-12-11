class CreateDestinationTable < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.column :location, :string
      t.column :planet, :string
      t.column :locals, :string
      t.column :transportation, :string
      t.column :review, :string
      t.column :author, :string

      t.timestamps
    end
  end
end
