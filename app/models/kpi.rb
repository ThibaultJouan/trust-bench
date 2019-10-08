class Kpi < ApplicationRecord
  has_many :kpis
  has_many :collected_data
end
