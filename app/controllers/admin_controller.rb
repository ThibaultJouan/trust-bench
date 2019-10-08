class AdminController < ApplicationController
	def index
		if params[:extract] == "collect"
			@collected_data = CollectedDatum.all
			respond_to do |format|
				format.csv { send_data @collected_data.to_csv, filename: "#{DateTime.now.strftime("%Y%m%d")}_historiques_données.csv" }
			end
		elsif params[:extract] == "bench"
			@bench = Bench.all
			respond_to do |format|
				format.csv { send_data @bench.to_csv, filename: "#{DateTime.now.strftime("%Y%m%d")}_benchmark.csv" }
			end
		end	
	end

  def create
		import = Bench.import(params[:bench][:file])
		if import == 1 
			flash[:notice] = "Mise à jour du benchmark avec succès"
			redirect_to admin_index_path
		elsif import == 0
			flash[:error] = "Echec dans la mise à jour du benchmark"
			redirect_to admin_index_path
		end
	end
end