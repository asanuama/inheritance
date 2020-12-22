class CreateDecedents < ActiveRecord::Migration[5.0]
  def change
    create_table :decedents do |t|

      t.timestamps
    end
  end
end
