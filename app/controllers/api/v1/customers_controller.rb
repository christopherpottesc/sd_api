module Api
	module V1
		class CustomersController < ApplicationController
			# Listar todos os clientes
			def index
				customers = Customer.order('created_at DESC');
				render json: {status: 'SUCCESS', message:'Customers carregados', data:customers},status: :ok
			end
			# Listar cliente passando ID
			def show
				customer = Customer.find(params[:id])
				render json: {status: 'SUCCESS', message:'Loaded customer', data:customer},status: :ok
			end
			# Criar um novo cliente
			def create
				customer = Customer.new(customer_params)
				if customer.save
					render json: {status: 'SUCCESS', message:'Saved customer', data:customer},status: :ok
				else
					render json: {status: 'ERROR', message:'Customers not saved', data:customer.erros},status: :unprocessable_entity
				end
			end
			# Excluir cliente
			def destroy
				customer = Customer.find(params[:id])
				customer.destroy
				render json: {status: 'SUCCESS', message:'Deleted customer', data:customer},status: :ok
			end
			# Atualizar um cliente
			def update
				customer = Customer.find(params[:id])
				if customer.update_attributes(customer_params)
					render json: {status: 'SUCCESS', message:'Updated customer', data:customer},status: :ok
				else
					render json: {status: 'ERROR', message:'Customers not update', data:customer.erros},status: :unprocessable_entity
				end
			end
			# Parametros aceitos
			private
			def customer_params
				params.permit(:name, :phone, :email, :cpf_cnpj)
			end
		end
	end
end