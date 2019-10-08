class CreateBenchArchives < ActiveRecord::Migration[5.2]
  def change
    create_table :bench_archives do |t|
      t.float :median_value
      t.float :min_value
      t.float :max_value
      t.string :source

      t.belongs_to :kpi
      t.belongs_to :approach
      t.belongs_to :activity
      t.belongs_to :size
      t.timestamps
    end
  end
end
