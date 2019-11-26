module Api
	module V1
		class DashboardController < ApplicationController
			def index

				# Quantidade por item
				customers = Customer.all.length
				calls = Call.all.length;
				demands = Demand.all.length;
				employees = Employee.all.length;

				total_value_calls = Call.sum(:value);
				total_value_displacement = Call.sum(:value_displacement)

				citys_values = Call.all.group(:city).count
				Rails.logger.info citys_values.to_json


				# Objeto com os valores
				response = {
					customers: customers,
					demands: demands,
					employees: employees,
					calls: calls,
					total_value_calls: total_value_calls,
					total_value_displacement: total_value_displacement,
					citys_values: citys_values
				}

				render json: {status: 'SUCCESS', message:'Informações carregadas', data: response}, status: :ok
			end
		end
	end
end