class CreateKpis < ActiveRecord::Migration[5.2]
  def change
    create_table :kpis do |t|
      t.string :label

      t.timestamps
    end
  end
end
