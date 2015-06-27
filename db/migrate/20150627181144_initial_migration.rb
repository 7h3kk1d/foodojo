class InitialMigration < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'
    create_table :potlucks, id: :uuid do |t|
      t.string :recipe_id
      t.string :owner_venmo
      t.timestamps null: false
    end

    create_table :people do |t|
      t.string :name
      t.string :phone_number
      t.timestamps null: false
    end

    create_table :participants do |t|
      t.belongs_to :potluck
      t.belongs_to :person
      t.timestamps null: false
    end
  end
end
