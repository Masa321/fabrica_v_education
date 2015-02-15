class CreateSlicerConfigs < ActiveRecord::Migration
  def change
    create_table :slicer_configs do |t|

    t.float    :nozzle_diameter
    t.integer  :point_center_x
    t.integer  :z_offset
    t.integer  :gcode_flavor
    t.boolean  :use_relative_e_distances
    t.boolean  :use_firmware_retraction
    t.integer  :vibration_limit
    t.integer  :pressure_advance
    t.float    :filament_diameter
    t.float    :extrusion_multiplier
    t.integer  :temperature
    t.integer  :bed_temperature
    t.integer  :first_layer_temperature
    t.integer  :first_layer_bed_temperature
    t.integer  :travel_speed
    t.integer  :perimeter_speed
    t.integer  :small_perimeter_speed
    t.string   :external_perimeter_speed
    t.integer  :infill_speed
    t.integer  :solid_infill_speed
    t.integer  :top_solid_infill_speed
    t.integer  :support_material_speed
    t.string   :support_material_interface_speed
    t.integer  :bridge_speed
    t.integer  :gap_fill_speed
    t.string   :first_layer_speed
    t.integer  :perimeter_acceleration
    t.integer  :infill_acceleration
    t.integer  :bridge_acceleration
    t.integer  :first_layer_acceleration
    t.integer  :default_acceleration
    t.boolean  :support_material
    t.integer  :support_material_threshold
    t.integer  :support_material_pattern
    t.integer  :support_material_angle
    t.integer  :support_material_interface_layer
    t.integer  :support_material_interface_spacing
    t.integer  :raft_layers
    t.integer  :support_material_enforce_layers
    t.boolean  :dont_support_bridges
    t.boolean  :cooling
    t.integer  :min_fan_speed
    t.integer  :max_fan_speed
    t.integer  :bridge_fan_speed
    t.integer  :fan_below_layer_time
    t.integer  :slowdown_below_layer_time
    t.integer  :min_print_speed
    t.integer  :disable_fan_first_layers
    t.boolean  :fan_always_on
    t.integer  :extruder_offset
    t.integer  :perimeter_extruder
    t.integer  :infill_extruder
    t.integer  :solid_infill_extruder
    t.integer  :support_material_extruder
    t.integer  :support_material_interface_extruder
    t.boolean  :ooze_prevention
    t.integer  :standby_temperature_delta
    t.float    :layer_height
    t.integer  :top_solid_layers
    t.integer  :bottom_solid_layers
    t.integer  :fill_density
    t.integer  :fill_angle
    t.integer  :fill_pattern
    t.integer  :external_fill_pattern
    t.boolean  :spiral_vase
    t.boolean  :only_retract_when_crossing_perimeters
    t.integer  :solid_infill_below_area
    t.boolean  :infill_only_where_needed
    t.boolean  :infill_first
    t.boolean  :extra_perimeters
    t.boolean  :avoid_crossing_perimeters
    t.boolean  :thin_walls
    t.boolean  :overhangs
    t.integer  :retract_length
    t.integer  :retract_speed
    t.integer  :retract_restart_extra
    t.integer  :retract_before_travel
    t.integer  :retract_lift
    t.boolean  :retract_layer_change
    t.boolean  :wipe
    t.integer  :retract_length_toolchange
    t.integer  :retract_restart_extra_toolchange
    t.integer  :skirts
    t.integer  :skirt_distance
    t.integer  :skirt_height
    t.integer  :min_skirt_length
    t.integer  :brim_width
    t.boolean  :complete_objects
    t.integer  :extruder_clearance_radius
    t.integer  :extruder_clearance_height
    t.string   :extrusion_width
    t.float    :first_layer_extrustion_width
    t.float    :perimeter_extrusion_width
    t.float    :external_perimeter_extrusion_width
    t.float    :infill_extrusion_width
    t.float    :solid_infill_extrusion_width
    t.float    :top_infill_extrusion_width
    t.float    :support_material_extrusion_width
    t.float    :bridge_flow_ratio
    t.string   :notes
    t.integer  :resolution
    t.datetime :created_at
    t.datetime :updated_at

      t.timestamps
    end
  end
end