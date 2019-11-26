module Api
	module V1
		class CallsController < ApplicationController
			# Listar todas calls
			def index
				calls = Call.order('created_at DESC');
				render json: {status: 'SUCCESS', message:'Calls carregados', data:calls},status: :ok
			end
			# Listar call passando ID
			def show
				call = Call.find(params[:id])
				render json: {status: 'SUCCESS', message:'Loaded call', data:call},status: :ok
			end
			# Criar uma nova call
			def create
				call = Call.new(call_params)
				if call.save
					render json: {status: 'SUCCESS', message:'Saved call', data:call},status: :ok
				else
					render json: {status: 'ERROR', message:'Calls not saved', data:call.erros},status: :unprocessable_entity
				end
			end
			# Excluir call
			def destroy
				call = Call.find(params[:id])
				call.destroy
				render json: {status: 'SUCCESS', message:'Deleted call', data:call},status: :ok
			end
			# Atualizar uma call
			def update
				call = Call.find(params[:id])
				if call.update_attributes(call_params)
					render json: {status: 'SUCCESS', message:'Updated call', data:call},status: :ok
				else
					render json: {status: 'ERROR', message:'Calls not update', data:call.erros},status: :unprocessable_entity
				end
			end
			# Parametros aceitos
			private
			def call_params
				params.permit(:acvivity, :name, :phone, :value, :value_displacement, :deadline, :cep, :street, :city, :number, :neighborhood, :start_date)
			end
		end
	end
end