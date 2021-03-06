class CreateChildren < ActiveRecord::Migration[5.0]
  def change
    create_table :children do |t|
      t.string :name
      t.date :birthday
      t.boolean :is_male, default: true
      t.date :date_of_death
      t.date :date_of_mariage
      t.boolean :is_alive ,default: true
      t.boolean :is_abandoned ,default: false
      t.boolean :is_real_child ,default: true
      t.date :adoption
      t.integer :decedent_id
      t.string :name_of_father
      t.string :name_of_mother
      t.string :relationship
      t.text :comment
      t.timestamps
    end
  end
end
