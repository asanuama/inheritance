class CreateDecedents < ActiveRecord::Migration[5.0]
  def change
    create_table :decedents do |t|
      t.string :name
      t.date :birthday
      t.boolean :is_male, default: true
      t.date :date_of_death
      t.boolean :is_married ,default: true
      t.text :comment

      t.timestamps
    end
  end
end
