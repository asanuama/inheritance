class CreateParents < ActiveRecord::Migration[5.0]
  def change
    create_table :parents do |t|
      t.string :name
      t.date :birthday
      t.boolean :is_male, default: true
      t.date :date_of_death
      t.date :date_of_mariage
      t.boolean :is_alive ,default: true
      t.boolean :is_abandoned ,default: false
      t.boolean :is_real_parent ,default: true
      t.date :adoption
      t.integer :decedent_id
      t.text :comment

      t.timestamps
    end
  end
end
