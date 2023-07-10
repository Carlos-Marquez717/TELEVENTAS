class PdfController < ApplicationController
  require 'prawn'

  def generate
    respond_to do |format|
      format.pdf do
        pdf = Prawn::Document.new
        pdf.text "Tabla de clientes"
  
        cliente_table_data = [
          ["Número Telefónico", "Nombre", "Email"],
          ["123456789", "Cliente 1", "cliente1@example.com"],
          ["987654321", "Cliente 2", "cliente2@example.com"],
          # Agrega más filas de datos según tus necesidades
        ]
  
        pdf.table cliente_table_data, header: true
  
        send_data pdf.render, filename: 'clientes.pdf', type: 'application/pdf', disposition: 'inline'
      end
    end
  end
end

  