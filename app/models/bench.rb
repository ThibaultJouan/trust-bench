class Bench < ApplicationRecord
  belongs_to :kpi
  belongs_to :approach
  belongs_to :activity
  belongs_to :size

  def self.to_csv
    attributes = %w{approach_id kpi_id activity_id size_id median_value min_value max_value source created_at updated_at}
    CSV.generate(headers: true, col_sep: ';', encoding: 'CP1252') do |csv|
      csv << attributes
      all.each do |bench| 
        bench_label = bench.attributes.values_at(*attributes)
        bench_label[0] = Approach.all.find_by(id:bench.attributes.values_at(*attributes)[0]).label
        bench_label[1] = Kpi.all.find_by(id:bench.attributes.values_at(*attributes)[1]).label
        bench_label[2] = Activity.all.find_by(id:bench.attributes.values_at(*attributes)[2]).label
        bench_label[3] = Size.all.find_by(id:bench.attributes.values_at(*attributes)[3]).label
        csv << bench_label
      end
    end
  end

  def self.import(file)
    #Benchmark archiving
    Bench.all.each do |bench|
      BenchArchive.create(median_value:bench.median_value, min_value:bench.min_value, max_value:bench.max_value, source:bench.source, kpi_id:bench.kpi_id, approach_id:bench.approach_id, activity_id:bench.activity_id, size_id:bench.size_id)
    end
    Bench.delete_all

    file.content_type.force_encoding('CP1252')
    CSV.foreach(file.path, headers: true, encoding: 'CP1252') do |row|
      Bench.create(median_value: row.to_s.split(";")[4], min_value: row.to_s.split(";")[5], max_value: row.to_s.split(";")[6], kpi_id: Kpi.find_by(label:row.to_s.split(";")[1]).id, approach_id: Approach.find_by(label:row.to_s.split(";")[0]).id, activity_id: Activity.find_by(label:row.to_s.split(";")[2]).id, size_id: Size.find_by(label:row.to_s.split(";")[3]).id)
    end
    

  end
end