# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170219223641) do

  create_table "administradors", primary_key: ["IdAdministrador", "CATALOGO_IdCatalogo", "CAMPANAS_IdCampana"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "IdAdministrador",                null: false
    t.string  "Nombre",              limit: 45, null: false
    t.string  "Apellido_Paterno",    limit: 45, null: false
    t.string  "Apellido_Materno",    limit: 45, null: false
    t.string  "Dni",                 limit: 45, null: false
    t.string  "Codigo_admin",        limit: 45, null: false
    t.integer "CATALOGO_IdCatalogo",            null: false
    t.integer "CAMPANAS_IdCampana",             null: false
    t.index ["CAMPANAS_IdCampana"], name: "fk_ADMINISTRADOR_CAMPAÑAS1_idx", using: :btree
    t.index ["CATALOGO_IdCatalogo"], name: "fk_ADMINISTRADOR_CATALOGO1_idx", using: :btree
  end

  create_table "busquedas", primary_key: ["IdBusqueda", "PACIENTES_IdPacientes", "PACIENTES_CLIENTES_IdCliente", "PACIENTES_CLIENTES_ADMINISTRADOR_IdAdministrador", "CLIENTES_IdCliente", "CLIENTES_ADMINISTRADOR_IdAdministrador"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "IdBusqueda",                                                  null: false
    t.string  "Dni",                                              limit: 45, null: false
    t.string  "Codigo_Paciente",                                  limit: 45, null: false
    t.integer "PACIENTES_IdPacientes",                                       null: false
    t.integer "PACIENTES_CLIENTES_IdCliente",                                null: false
    t.integer "PACIENTES_CLIENTES_ADMINISTRADOR_IdAdministrador",            null: false
    t.integer "CLIENTES_IdCliente",                                          null: false
    t.integer "CLIENTES_ADMINISTRADOR_IdAdministrador",                      null: false
    t.index ["CLIENTES_IdCliente", "CLIENTES_ADMINISTRADOR_IdAdministrador"], name: "fk_BUSQUEDA_CLIENTES1_idx", using: :btree
    t.index ["PACIENTES_IdPacientes", "PACIENTES_CLIENTES_IdCliente", "PACIENTES_CLIENTES_ADMINISTRADOR_IdAdministrador"], name: "fk_BUSQUEDA_PACIENTES1_idx", using: :btree
  end

  create_table "campania", primary_key: "IdCampania", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Nombre_Campania", limit: 45, null: false
    t.datetime "Tiempo_Campania",            null: false
  end

  create_table "catalogo_has_producto", primary_key: ["CATALOGO_IdCatalogo", "PRODUCTOS_IdProducto"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "CATALOGO_IdCatalogo",  null: false
    t.integer "PRODUCTOS_IdProducto", null: false
    t.index ["CATALOGO_IdCatalogo"], name: "fk_CATALOGO_has_PRODUCTOS_CATALOGO1_idx", using: :btree
    t.index ["PRODUCTOS_IdProducto"], name: "fk_CATALOGO_has_PRODUCTOS_PRODUCTOS1_idx", using: :btree
  end

  create_table "catalogos", primary_key: "IdCatalogo", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "Productos", limit: 45, null: false
    t.string "Servicios", limit: 45, null: false
  end

  create_table "cita", primary_key: ["IdCita", "CLIENTES_IdCliente", "CLIENTES_ADMINISTRADOR_IdAdministrador"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "IdCita",                                            null: false
    t.string  "Paciente",                               limit: 45, null: false
    t.string  "Duenio",                                 limit: 45, null: false
    t.string  "Telefono",                               limit: 45, null: false
    t.string  "Direccion",                              limit: 45, null: false
    t.string  "Fecha_Registro",                         limit: 45, null: false
    t.string  "Vacunas",                                limit: 45, null: false
    t.integer "CLIENTES_IdCliente",                                null: false
    t.integer "CLIENTES_ADMINISTRADOR_IdAdministrador",            null: false
    t.index ["CLIENTES_IdCliente", "CLIENTES_ADMINISTRADOR_IdAdministrador"], name: "fk_CITAS_CLIENTES1_idx", using: :btree
  end

  create_table "clientes", primary_key: ["IdCliente", "ADMINISTRADOR_IdAdministrador", "HISTORIA_IdHistoria"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "IdCliente",                                null: false
    t.string  "Nombre",                        limit: 45, null: false
    t.string  "Apellido_Paterno",              limit: 45, null: false
    t.string  "Apellido_Materno",              limit: 45, null: false
    t.string  "Correo_Electronico",            limit: 45, null: false
    t.string  "Direccion",                     limit: 45, null: false
    t.string  "Telefono_Casa",                 limit: 45, null: false
    t.string  "Telefono_Celular",              limit: 45, null: false
    t.integer "ADMINISTRADOR_IdAdministrador",            null: false
    t.integer "HISTORIA_IdHistoria",                      null: false
    t.index ["ADMINISTRADOR_IdAdministrador"], name: "fk_CLIENTES_ADMINISTRADOR1_idx", using: :btree
    t.index ["HISTORIA_IdHistoria"], name: "fk_CLIENTES_HISTORIA1_idx", using: :btree
  end

  create_table "clientes_has_comprobante", primary_key: ["CLIENTES_IdCliente", "CLIENTES_ADMINISTRADOR_IdAdministrador", "COMPROBANTES_IdComprobante"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "CLIENTES_IdCliente",                     null: false
    t.integer "CLIENTES_ADMINISTRADOR_IdAdministrador", null: false
    t.integer "COMPROBANTES_IdComprobante",             null: false
    t.index ["CLIENTES_IdCliente", "CLIENTES_ADMINISTRADOR_IdAdministrador"], name: "fk_CLIENTES_has_COMPROBANTES_CLIENTES1_idx", using: :btree
    t.index ["COMPROBANTES_IdComprobante"], name: "fk_CLIENTES_has_COMPROBANTES_COMPROBANTES1_idx", using: :btree
  end

  create_table "comprobantes", primary_key: "IdComprobante", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "Nombre_Duenio",    limit: 45,                null: false
    t.string  "Paciente",         limit: 45,                null: false
    t.string  "Ruc",              limit: 45,                null: false
    t.string  "Direccion",        limit: 45,                null: false
    t.date    "Fecha_Registro",                             null: false
    t.string  "Detalle_Producto", limit: 45,                null: false
    t.decimal "Precio_Unitario",             precision: 10, null: false
    t.decimal "Precio_Total",                precision: 10, null: false
    t.string  "Cantidad",         limit: 45,                null: false
  end

  create_table "doctores_has_cita", primary_key: ["DOCTORES_IdDoctor", "DOCTORES_ADMINISTRADOR_IdAdministrador", "CITAS_IdCita", "CITAS_CLIENTES_IdCliente", "CITAS_CLIENTES_ADMINISTRADOR_IdAdministrador"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "DOCTORES_IdDoctor",                            null: false
    t.integer "DOCTORES_ADMINISTRADOR_IdAdministrador",       null: false
    t.integer "CITAS_IdCita",                                 null: false
    t.integer "CITAS_CLIENTES_IdCliente",                     null: false
    t.integer "CITAS_CLIENTES_ADMINISTRADOR_IdAdministrador", null: false
    t.index ["CITAS_IdCita", "CITAS_CLIENTES_IdCliente", "CITAS_CLIENTES_ADMINISTRADOR_IdAdministrador"], name: "fk_DOCTORES_has_CITAS_CITAS1_idx", using: :btree
    t.index ["DOCTORES_IdDoctor", "DOCTORES_ADMINISTRADOR_IdAdministrador"], name: "fk_DOCTORES_has_CITAS_DOCTORES1_idx", using: :btree
  end

  create_table "doctores_has_cliente", primary_key: ["DOCTORES_IdDoctor", "DOCTORES_ADMINISTRADOR_IdAdministrador", "CLIENTES_IdCliente", "CLIENTES_ADMINISTRADOR_IdAdministrador"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "DOCTORES_IdDoctor",                      null: false
    t.integer "DOCTORES_ADMINISTRADOR_IdAdministrador", null: false
    t.integer "CLIENTES_IdCliente",                     null: false
    t.integer "CLIENTES_ADMINISTRADOR_IdAdministrador", null: false
    t.index ["CLIENTES_IdCliente", "CLIENTES_ADMINISTRADOR_IdAdministrador"], name: "fk_DOCTORES_has_CLIENTES_CLIENTES1_idx", using: :btree
    t.index ["DOCTORES_IdDoctor", "DOCTORES_ADMINISTRADOR_IdAdministrador"], name: "fk_DOCTORES_has_CLIENTES_DOCTORES1_idx", using: :btree
  end

  create_table "doctors", primary_key: ["IdDoctor", "ADMINISTRADOR_IdAdministrador"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "IdDoctor",                                 null: false
    t.string  "Nombre",                        limit: 45, null: false
    t.string  "Apellido_Paterno",              limit: 45, null: false
    t.string  "Apellido_Materno",              limit: 45, null: false
    t.string  "Email",                         limit: 45, null: false
    t.string  "Telefono",                      limit: 45, null: false
    t.integer "ADMINISTRADOR_IdAdministrador",            null: false
    t.index ["ADMINISTRADOR_IdAdministrador"], name: "fk_DOCTORES_ADMINISTRADOR_idx", using: :btree
  end

  create_table "guarderia", primary_key: ["IdGuarderia", "BUSQUEDA_IdBusqueda", "BUSQUEDA_PACIENTES_IdPacientes", "BUSQUEDA_PACIENTES_CLIENTES_IdCliente", "BUSQUEDA_PACIENTES_CLIENTES_ADMINISTRADOR_IdAdministrador", "BUSQUEDA_CLIENTES_IdCliente", "BUSQUEDA_CLIENTES_ADMINISTRADOR_IdAdministrador"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "IdGuarderia",                                                          null: false
    t.string   "Nombre_Cliente",                                            limit: 45, null: false
    t.string   "Nombre_Paciente",                                           limit: 45, null: false
    t.string   "Codigo_Paciente",                                           limit: 45, null: false
    t.datetime "Tiempo_Estadia",                                                       null: false
    t.integer  "BUSQUEDA_IdBusqueda",                                                  null: false
    t.integer  "BUSQUEDA_PACIENTES_IdPacientes",                                       null: false
    t.integer  "BUSQUEDA_PACIENTES_CLIENTES_IdCliente",                                null: false
    t.integer  "BUSQUEDA_PACIENTES_CLIENTES_ADMINISTRADOR_IdAdministrador",            null: false
    t.integer  "BUSQUEDA_CLIENTES_IdCliente",                                          null: false
    t.integer  "BUSQUEDA_CLIENTES_ADMINISTRADOR_IdAdministrador",                      null: false
    t.index ["BUSQUEDA_IdBusqueda", "BUSQUEDA_PACIENTES_IdPacientes", "BUSQUEDA_PACIENTES_CLIENTES_IdCliente", "BUSQUEDA_PACIENTES_CLIENTES_ADMINISTRADOR_IdAdministrador", "BUSQUEDA_CLIENTES_IdCliente", "BUSQUEDA_CLIENTES_ADMINISTRADOR_IdAdministrador"], name: "fk_GUARDERIA_BUSQUEDA1_idx", using: :btree
  end

  create_table "historia", primary_key: "IdHistoria", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "Nro_Atencion",             limit: 45, null: false
    t.string "Antecedentes_Patologicos", limit: 45, null: false
    t.string "Diagnostico",              limit: 45, null: false
    t.string "Receta",                   limit: 45, null: false
    t.string "Sintomas",                 limit: 45, null: false
  end

  create_table "paciente", primary_key: ["IdPacientes", "CLIENTES_IdCliente", "CLIENTES_ADMINISTRADOR_IdAdministrador", "HISTORIA_IdHistoria"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "IdPacientes",                                                     null: false
    t.string  "Nombre_Duenio",                          limit: 45,               null: false
    t.string  "Especie",                                limit: 45,               null: false
    t.string  "Raza",                                   limit: 45,               null: false
    t.string  "Genero",                                 limit: 45,               null: false
    t.string  "Tipo_Sangre",                            limit: 45,               null: false
    t.string  "Tamanio",                                limit: 45,               null: false
    t.string  "Actividad",                              limit: 45,               null: false
    t.decimal "Peso",                                              precision: 5, null: false
    t.date    "Fecha_Nacimiento",                                                null: false
    t.string  "Codigo_Paciente",                        limit: 45,               null: false
    t.integer "CLIENTES_IdCliente",                                              null: false
    t.integer "CLIENTES_ADMINISTRADOR_IdAdministrador",                          null: false
    t.integer "HISTORIA_IdHistoria",                                             null: false
    t.index ["CLIENTES_IdCliente", "CLIENTES_ADMINISTRADOR_IdAdministrador"], name: "fk_PACIENTES_CLIENTES1_idx", using: :btree
    t.index ["HISTORIA_IdHistoria"], name: "fk_PACIENTES_HISTORIA1_idx", using: :btree
  end

  create_table "producto", primary_key: "IdProducto", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "Nombre_Producto", limit: 45,                null: false
    t.decimal "Precio_Producto",            precision: 10, null: false
  end

  create_table "productos_has_promociones", primary_key: ["PRODUCTOS_IdProducto", "PROMOCIONES_IdPromociones"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "PRODUCTOS_IdProducto",      null: false
    t.integer "PROMOCIONES_IdPromociones", null: false
    t.index ["PRODUCTOS_IdProducto"], name: "fk_PRODUCTOS_has_PROMOCIONES_PRODUCTOS1_idx", using: :btree
    t.index ["PROMOCIONES_IdPromociones"], name: "fk_PRODUCTOS_has_PROMOCIONES_PROMOCIONES1_idx", using: :btree
  end

  create_table "promocion", primary_key: "IdPromociones", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "TipoPromocion",     limit: 45, null: false
    t.string "NombrePromocion",   limit: 45, null: false
    t.string "DuracionPromocion", limit: 45, null: false
  end

  create_table "promociones_has_campañas", primary_key: ["PROMOCIONES_IdPromociones", "CAMPAÑAS_IdCampaña"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "PROMOCIONES_IdPromociones", null: false
    t.integer "CAMPAÑAS_IdCampaña",        null: false
    t.index ["CAMPAÑAS_IdCampaña"], name: "fk_PROMOCIONES_has_CAMPAÑAS_CAMPAÑAS1_idx", using: :btree
    t.index ["PROMOCIONES_IdPromociones"], name: "fk_PROMOCIONES_has_CAMPAÑAS_PROMOCIONES1_idx", using: :btree
  end

  create_table "servicio", primary_key: ["IdServicio", "CATALOGO_IdCatalogo"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "IdServicio",                                    null: false
    t.string  "Nombre_Servicio",     limit: 45,                null: false
    t.decimal "Precio_Servicio",                precision: 10, null: false
    t.integer "CATALOGO_IdCatalogo",                           null: false
    t.index ["CATALOGO_IdCatalogo"], name: "fk_SERVICIOS_CATALOGO1_idx", using: :btree
  end

  create_table "servicios_has_promociones", primary_key: ["SERVICIOS_IdServicio", "SERVICIOS_CATALOGO_IdCatalogo", "PROMOCIONES_IdPromociones"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "SERVICIOS_IdServicio",          null: false
    t.integer "SERVICIOS_CATALOGO_IdCatalogo", null: false
    t.integer "PROMOCIONES_IdPromociones",     null: false
    t.index ["PROMOCIONES_IdPromociones"], name: "fk_SERVICIOS_has_PROMOCIONES_PROMOCIONES1_idx", using: :btree
    t.index ["SERVICIOS_IdServicio", "SERVICIOS_CATALOGO_IdCatalogo"], name: "fk_SERVICIOS_has_PROMOCIONES_SERVICIOS1_idx", using: :btree
  end

  add_foreign_key "administradors", "campania", column: "CAMPANAS_IdCampana", primary_key: "IdCampania", name: "fk_ADMINISTRADOR_CAMPAÑAS1"
  add_foreign_key "administradors", "catalogos", column: "CATALOGO_IdCatalogo", primary_key: "IdCatalogo", name: "fk_ADMINISTRADOR_CATALOGO1"
  add_foreign_key "busquedas", "clientes", column: "CLIENTES_ADMINISTRADOR_IdAdministrador", primary_key: "ADMINISTRADOR_IdAdministrador", name: "fk_BUSQUEDA_CLIENTES1"
  add_foreign_key "busquedas", "clientes", column: "CLIENTES_IdCliente", primary_key: "IdCliente", name: "fk_BUSQUEDA_CLIENTES1"
  add_foreign_key "busquedas", "paciente", column: "PACIENTES_CLIENTES_ADMINISTRADOR_IdAdministrador", primary_key: "CLIENTES_ADMINISTRADOR_IdAdministrador", name: "fk_BUSQUEDA_PACIENTES1"
  add_foreign_key "busquedas", "paciente", column: "PACIENTES_CLIENTES_IdCliente", primary_key: "CLIENTES_IdCliente", name: "fk_BUSQUEDA_PACIENTES1"
  add_foreign_key "busquedas", "paciente", column: "PACIENTES_IdPacientes", primary_key: "IdPacientes", name: "fk_BUSQUEDA_PACIENTES1"
  add_foreign_key "catalogo_has_producto", "catalogos", column: "CATALOGO_IdCatalogo", primary_key: "IdCatalogo", name: "fk_CATALOGO_has_PRODUCTOS_CATALOGO1"
  add_foreign_key "catalogo_has_producto", "producto", column: "PRODUCTOS_IdProducto", primary_key: "IdProducto", name: "fk_CATALOGO_has_PRODUCTOS_PRODUCTOS1"
  add_foreign_key "cita", "clientes", column: "CLIENTES_ADMINISTRADOR_IdAdministrador", primary_key: "ADMINISTRADOR_IdAdministrador", name: "fk_CITAS_CLIENTES1"
  add_foreign_key "cita", "clientes", column: "CLIENTES_IdCliente", primary_key: "IdCliente", name: "fk_CITAS_CLIENTES1"
  add_foreign_key "clientes", "administradors", column: "ADMINISTRADOR_IdAdministrador", primary_key: "IdAdministrador", name: "fk_CLIENTES_ADMINISTRADOR1"
  add_foreign_key "clientes", "historia", column: "HISTORIA_IdHistoria", primary_key: "IdHistoria", name: "fk_CLIENTES_HISTORIA1"
  add_foreign_key "clientes_has_comprobante", "clientes", column: "CLIENTES_ADMINISTRADOR_IdAdministrador", primary_key: "ADMINISTRADOR_IdAdministrador", name: "fk_CLIENTES_has_COMPROBANTES_CLIENTES1"
  add_foreign_key "clientes_has_comprobante", "clientes", column: "CLIENTES_IdCliente", primary_key: "IdCliente", name: "fk_CLIENTES_has_COMPROBANTES_CLIENTES1"
  add_foreign_key "clientes_has_comprobante", "comprobantes", column: "COMPROBANTES_IdComprobante", primary_key: "IdComprobante", name: "fk_CLIENTES_has_COMPROBANTES_COMPROBANTES1"
  add_foreign_key "doctores_has_cita", "cita", column: "CITAS_CLIENTES_ADMINISTRADOR_IdAdministrador", primary_key: "CLIENTES_ADMINISTRADOR_IdAdministrador", name: "fk_DOCTORES_has_CITAS_CITAS1"
  add_foreign_key "doctores_has_cita", "cita", column: "CITAS_CLIENTES_IdCliente", primary_key: "CLIENTES_IdCliente", name: "fk_DOCTORES_has_CITAS_CITAS1"
  add_foreign_key "doctores_has_cita", "cita", column: "CITAS_IdCita", primary_key: "IdCita", name: "fk_DOCTORES_has_CITAS_CITAS1"
  add_foreign_key "doctores_has_cita", "doctors", column: "DOCTORES_ADMINISTRADOR_IdAdministrador", primary_key: "ADMINISTRADOR_IdAdministrador", name: "fk_DOCTORES_has_CITAS_DOCTORES1"
  add_foreign_key "doctores_has_cita", "doctors", column: "DOCTORES_IdDoctor", primary_key: "IdDoctor", name: "fk_DOCTORES_has_CITAS_DOCTORES1"
  add_foreign_key "doctores_has_cliente", "clientes", column: "CLIENTES_ADMINISTRADOR_IdAdministrador", primary_key: "ADMINISTRADOR_IdAdministrador", name: "fk_DOCTORES_has_CLIENTES_CLIENTES1"
  add_foreign_key "doctores_has_cliente", "clientes", column: "CLIENTES_IdCliente", primary_key: "IdCliente", name: "fk_DOCTORES_has_CLIENTES_CLIENTES1"
  add_foreign_key "doctores_has_cliente", "doctors", column: "DOCTORES_ADMINISTRADOR_IdAdministrador", primary_key: "ADMINISTRADOR_IdAdministrador", name: "fk_DOCTORES_has_CLIENTES_DOCTORES1"
  add_foreign_key "doctores_has_cliente", "doctors", column: "DOCTORES_IdDoctor", primary_key: "IdDoctor", name: "fk_DOCTORES_has_CLIENTES_DOCTORES1"
  add_foreign_key "doctors", "administradors", column: "ADMINISTRADOR_IdAdministrador", primary_key: "IdAdministrador", name: "fk_DOCTORES_ADMINISTRADOR"
  add_foreign_key "guarderia", "busquedas", column: "BUSQUEDA_CLIENTES_ADMINISTRADOR_IdAdministrador", primary_key: "CLIENTES_ADMINISTRADOR_IdAdministrador", name: "fk_GUARDERIA_BUSQUEDA1"
  add_foreign_key "guarderia", "busquedas", column: "BUSQUEDA_CLIENTES_IdCliente", primary_key: "CLIENTES_IdCliente", name: "fk_GUARDERIA_BUSQUEDA1"
  add_foreign_key "guarderia", "busquedas", column: "BUSQUEDA_IdBusqueda", primary_key: "IdBusqueda", name: "fk_GUARDERIA_BUSQUEDA1"
  add_foreign_key "guarderia", "busquedas", column: "BUSQUEDA_PACIENTES_CLIENTES_ADMINISTRADOR_IdAdministrador", primary_key: "PACIENTES_CLIENTES_ADMINISTRADOR_IdAdministrador", name: "fk_GUARDERIA_BUSQUEDA1"
  add_foreign_key "guarderia", "busquedas", column: "BUSQUEDA_PACIENTES_CLIENTES_IdCliente", primary_key: "PACIENTES_CLIENTES_IdCliente", name: "fk_GUARDERIA_BUSQUEDA1"
  add_foreign_key "guarderia", "busquedas", column: "BUSQUEDA_PACIENTES_IdPacientes", primary_key: "PACIENTES_IdPacientes", name: "fk_GUARDERIA_BUSQUEDA1"
  add_foreign_key "paciente", "clientes", column: "CLIENTES_ADMINISTRADOR_IdAdministrador", primary_key: "ADMINISTRADOR_IdAdministrador", name: "fk_PACIENTES_CLIENTES1"
  add_foreign_key "paciente", "clientes", column: "CLIENTES_IdCliente", primary_key: "IdCliente", name: "fk_PACIENTES_CLIENTES1"
  add_foreign_key "paciente", "historia", column: "HISTORIA_IdHistoria", primary_key: "IdHistoria", name: "fk_PACIENTES_HISTORIA1"
  add_foreign_key "productos_has_promociones", "producto", column: "PRODUCTOS_IdProducto", primary_key: "IdProducto", name: "fk_PRODUCTOS_has_PROMOCIONES_PRODUCTOS1"
  add_foreign_key "productos_has_promociones", "promocion", column: "PROMOCIONES_IdPromociones", primary_key: "IdPromociones", name: "fk_PRODUCTOS_has_PROMOCIONES_PROMOCIONES1"
  add_foreign_key "promociones_has_campañas", "campania", column: "CAMPAÑAS_IdCampaña", primary_key: "IdCampania", name: "fk_PROMOCIONES_has_CAMPAÑAS_CAMPAÑAS1"
  add_foreign_key "promociones_has_campañas", "promocion", column: "PROMOCIONES_IdPromociones", primary_key: "IdPromociones", name: "fk_PROMOCIONES_has_CAMPAÑAS_PROMOCIONES1"
  add_foreign_key "servicio", "catalogos", column: "CATALOGO_IdCatalogo", primary_key: "IdCatalogo", name: "fk_SERVICIOS_CATALOGO1"
  add_foreign_key "servicios_has_promociones", "promocion", column: "PROMOCIONES_IdPromociones", primary_key: "IdPromociones", name: "fk_SERVICIOS_has_PROMOCIONES_PROMOCIONES1"
  add_foreign_key "servicios_has_promociones", "servicio", column: "SERVICIOS_CATALOGO_IdCatalogo", primary_key: "CATALOGO_IdCatalogo", name: "fk_SERVICIOS_has_PROMOCIONES_SERVICIOS1"
  add_foreign_key "servicios_has_promociones", "servicio", column: "SERVICIOS_IdServicio", primary_key: "IdServicio", name: "fk_SERVICIOS_has_PROMOCIONES_SERVICIOS1"
end
