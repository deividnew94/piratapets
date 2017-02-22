json.extract! historium, :id, :IdHistoria, :Nro_Atencion, :Antecedentes_Patologicos, :Diagnostico, :Receta, :Sintomas, :created_at, :updated_at
json.url historium_url(historium, format: :json)