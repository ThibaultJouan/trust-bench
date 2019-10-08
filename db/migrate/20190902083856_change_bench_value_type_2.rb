class ChangeBenchValueType2 < ActiveRecord::Migration[5.2]
  def change
    change_column :benches, :median_value, :string
    change_column :benches, :min_value, :string
    change_column :benches, :max_value, :string
  end
end
