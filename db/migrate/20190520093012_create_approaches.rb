class CreateApproaches < ActiveRecord::Migration[5.2]
  def change
    create_table :approaches do |t|
      t.string :label

      t.timestamps
    end
  end
end
