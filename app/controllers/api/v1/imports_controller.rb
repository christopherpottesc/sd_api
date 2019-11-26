module Api
	module V1
		class ImportsController < ApplicationController
			# Listar todos os clientes
			def index
			end
			# Listar cliente passando ID
			def show
			end
			# Criar um novo cliente
			def create
				Rails.logger.info "\n\n\n"
				@filename = params[:file]

				line_num=0
				text=@filename.read
				text.gsub!(/\r\n?/, "\n")
				document = {}
				text.each_line do |line|
				  print "#{line_num += 1} #{line}"
				  key, value = line.split(': ')
					document[key] = value
					# p value[0]
					# p value[1].gsub("\n", '')
					# Call.method(value[0]). = value[1]
				end

				Call.create(document)

			end
			# Parametros aceitos
			# private
			# def employee_params
			# 	params.permit(:name, :phone, :email, :function)
			# end
		end
	end
end