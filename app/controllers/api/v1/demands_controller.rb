module Api
	module V1
		class DemandsController < ApplicationController
			# Listar todos os clientes
			def index
				demands = Demand.order('created_at DESC');
				render json: {status: 'SUCCESS', message:'Demands carregados', data:demands},status: :ok
			end
			# Listar cliente passando ID
			def show
				demand = Demand.find(params[:id])
				render json: {status: 'SUCCESS', message:'Loaded demand', data:demand},status: :ok
			end
			# Criar um novo cliente
			def create
				demand = Demand.new(demand_params)
				if demand.save
					render json: {status: 'SUCCESS', message:'Saved demand', data:demand},status: :ok
				else
					render json: {status: 'ERROR', message:'Demands not saved', data:demand.erros},status: :unprocessable_entity
				end
			end
			# Excluir cliente
			def destroy
				demand = Demand.find(params[:id])
				demand.destroy
				render json: {status: 'SUCCESS', message:'Deleted demand', data:demand},status: :ok
			end
			# Atualizar um cliente
			def update
				demand = Demand.find(params[:id])
				if demand.update_attributes(demand_params)
					render json: {status: 'SUCCESS', message:'Updated demand', data:demand},status: :ok
				else
					render json: {status: 'ERROR', message:'Demands not update', data:demand.erros},status: :unprocessable_entity
				end
			end
			# Parametros aceitos
			private
			def demand_params
				params.permit(:description, :observation, :value, :date_start, :date_end)
			end
		end
	end
end