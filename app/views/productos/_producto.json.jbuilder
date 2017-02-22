json.extract! producto, :id, :IdProducto, :Nombre_Producto, :Precio_Producto, :created_at, :updated_at
json.url producto_url(producto, format: :json)