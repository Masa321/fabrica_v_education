json.array!(@printers) do |printer|
  json.extract! printer, :id, :condition, :name, :print_area_x, :print_area_y, :print_area_z, :printer_type, :slice_h, :slice_m, :slice_l, :photo, :filament_color
  json.url printer_url(printer, format: :json)
end
