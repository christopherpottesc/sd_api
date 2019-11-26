module Api
	module V1
		class EmployeesController < ApplicationController
			# Listar todos os clientes
			def index
				employees = Employee.order('created_at DESC');
				render json: {status: 'SUCCESS', message:'Employees carregados', data:employees},status: :ok
			end
			# Listar cliente passando ID
			def show
				employee = Employee.find(params[:id])
				render json: {status: 'SUCCESS', message:'Loaded employee', data:employee},status: :ok
			end
			# Criar um novo cliente
			def create
				employee = Employee.new(employee_params)
				if employee.save
					render json: {status: 'SUCCESS', message:'Saved employee', data:employee},status: :ok
				else
					render json: {status: 'ERROR', message:'Employees not saved', data:employee.erros},status: :unprocessable_entity
				end
			end
			# Excluir cliente
			def destroy
				employee = Employee.find(params[:id])
				employee.destroy
				render json: {status: 'SUCCESS', message:'Deleted employee', data:employee},status: :ok
			end
			# Atualizar um cliente
			def update
				employee = Employee.find(params[:id])
				if employee.update_attributes(customer_params)
					render json: {status: 'SUCCESS', message:'Updated employee', data:employee},status: :ok
				else
					render json: {status: 'ERROR', message:'Employees not update', data:employee.erros},status: :unprocessable_entity
				end
			end
			# Parametros aceitos
			private
			def employee_params
				params.permit(:name, :phone, :email, :function)
			end
		end
	end
end