class CreateSuperHeroes < ActiveRecord::Migration
  def change
    create_table :super_heroes do |t|
      t.string :name
      t.string :superpower

      t.timestamps null: false
    end
  end
end
