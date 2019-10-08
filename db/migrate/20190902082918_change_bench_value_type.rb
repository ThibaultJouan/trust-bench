class ChangeBenchValueType < ActiveRecord::Migration[5.2]
  def change
    change_column :benches, :median_value, :decimal
    change_column :benches, :min_value, :decimal
    change_column :benches, :max_value, :decimal
  end
end
