class CreateCollectedData < ActiveRecord::Migration[5.2]
  def change
    create_table :collected_data do |t|
      t.float :value
      t.float :numerator
      t.float :denominator
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :company
      t.string :position

      t.belongs_to :kpi
      t.belongs_to :approach
      t.belongs_to :activity
      t.belongs_to :size
      t.timestamps
    end
  end
end
