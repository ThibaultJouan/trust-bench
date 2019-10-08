# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#KPI Creation
#Global
Kpi.create!(label: "SG&A sur CA");
Kpi.create!(label: "G&A sur CA");
Kpi.create!(label: "Coût fonction Finance sur CA");
Kpi.create!(label: "Coûts Informatiques sur CA");
Kpi.create!(label: "Coût fonction Commerciale sur CA");                             #5
Kpi.create!(label: "Coût Marketing sur CA");
Kpi.create!(label: "Salariés gérés par ETP RH");
#Finance
Kpi.create!(label: "Cout comptabilite sur CA");
Kpi.create!(label: "Cout controle de gestion sur CA");
Kpi.create!(label: "Proportion de clients avec un centre de service");              #10
Kpi.create!(label: "Niveau moyen de maturite digitale finance");
#RH
Kpi.create!(label: "Nombre de fiche de paie par ETP RH");
Kpi.create!(label: "Salaries de terrain par ETP RH");
Kpi.create!(label: "Proportion de clients avec un centre de service partage RH");
Kpi.create!(label: "Niveau moyen de maturite digitale RH");                         #15
#IT
Kpi.create!(label: "OPEX sur CAPEX");
Kpi.create!(label: "Salaries IT internes sur salaries IT externes");
Kpi.create!(label: "Depenses projet sur depenses run");
Kpi.create!(label: "Nombre de projets digitaux sur nombre total de projet");
Kpi.create!(label: "Depenses en applicatif sur depenses en infratructure");         #20
#Sales
Kpi.create!(label: "Cout marketing et communication sur CA");
Kpi.create!(label: "Cout marketing digital sur cout marketing et communication");
Kpi.create!(label: "ETP vendeur sedentaire sur ETP vendeurs de terrains");
Kpi.create!(label: "Proportion de clients avec un centre de service partage ADV");


#Aproach Creation
Approach.create!(label: "Global SG&A");
Approach.create!(label: "Fonction Finance");
Approach.create!(label: "Fonction RH");
Approach.create!(label: "Fonction IT");
Approach.create!(label: "Fonctions Marketing & Ventes");

#Activity Creation
Activity.create!(label: "Secteur financier");
Activity.create!(label: "Médias et communication");
Activity.create!(label: "Prestations Intellectuelles");
Activity.create!(label: "Industrie");
Activity.create!(label: "Technologies");
Activity.create!(label: "Energie");
Activity.create!(label: "Utilities");
Activity.create!(label: "Industrie pharmaceutique");
Activity.create!(label: "Transport et logistique");
Activity.create!(label: "Distribution");

#Size Creation
Size.create!(label: "CA < 500M€")
Size.create!(label: "CA entre 500M€ et 1Mrd€")
Size.create!(label: "CA entre 1Mrd€ et 10Mrd€")
Size.create!(label: "CA entre 10Mrd€ et 50Mrd€")
Size.create!(label: "CA > 50Mrd€")

#Bench Creation
Bench.create!(median_value: "8.13%", min_value:"28.84%", max_value:"2.65%", source:"https://saibooks.com/sga-benchmarks/", kpi_id: 1, approach_id: 1, activity_id:6, size_id:4)
Bench.create!(median_value: "17.31%", min_value:"37.88%", max_value:"7.19%", source:"https://saibooks.com/sga-benchmarks/", kpi_id: 1, approach_id: 1, activity_id:2, size_id:4)
