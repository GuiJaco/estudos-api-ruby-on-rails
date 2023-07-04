class EstadosController < ApplicationController
  def index

    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'GET'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept'

    estados = [
      {nome: "São Paulo", uf: "SP"},
      {nome: "Rio de Janeiro", uf: "RJ"},
      {nome: "Minas Gerais", uf: "MG"},
      {nome: "Goiás", uf: "GO"},
      {nome: "Espirito Santo", uf: "ES"},
    ] 

    if params["uf"].present?
      estados = estados.select{ |e| e[:uf].upcase == params["uf"].upcase}
    end

    render json: estados, status: 200
  end

  def cidades

    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'GET'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept'


    cidades = [
      {nome: "São Paulo", uf: "SP"},
      {nome: "Santo André", uf: "SP"},
      {nome: "Maua", uf: "SP"},
      {nome: "Campinas", uf: "SP"},
      {nome: "Rio de Janeiro", uf: "RJ"},
      {nome: "Cabo Frio", uf: "RJ"},
      {nome: "Niteroi", uf: "RJ"},
    ]

    if params["uf"].present?
      cidades = cidades.select{ |e| e[:uf].upcase == params["uf"].upcase}
    end

    render json: cidades, status: 200
  end
end
