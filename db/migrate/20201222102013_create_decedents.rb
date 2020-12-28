class CreateDecedents < ActiveRecord::Migration[5.0]
  def change
    create_table :decedents do |t|
      t.string :name
      t.date :birthday
      t.boolean :is_male, default: true
      t.date :date_of_death
      t.boolean :is_married ,default: true
      t.text :comment
      t.string :name_of_father
      t.string :name_of_mother
      t.string :relationship
      t.timestamps
    end
  end
end
