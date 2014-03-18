
3dm1_infos = {
  specs: "extruder 0.35mm - max speed: 90mm/s - travel speed: 100mm/s",  specs_it: "estrusore: 0.35mm - velocità standard: 55mm/s - velocità max: 90mm/s - travel speed: 100mm/s", description: "", description_it: ""
}

PRODUCTS = [
  # 3DM1 printer - 3dm1_printer
  { cat: :"3dm1_printer", name: :"3dm1_printer_assembled", title: "3D Printer - 3DM1 fully assembled", title_it: "Stampante 3D - 3DM1 assemblata", original_price: 699, image: 0, price: 205 }.merge(3dm1_infos),
  { cat: :"3dm1_printer", name: :"3dm1_printer_kit", title: "3D Printer - 3DM1 kit", title_it: "Stampante 3D - 3DM1 kit di assemblaggio", original_price: 499, price: 205, image: 0 }.merge(3dm1_infos),
  { cat: :"3dm1_printer", name: :"3dm1_printer_plastic_parts", title: "3D Printer - 3DM1 plastic parts", title_it: "Stampante 3D - 3DM1 parti stampate", original_price: 49, price: 10, image: 2 }.merge(3dm1_infos),
  
  
  # prusa i3DM   - prusa_i3dm
  { cat: :"3dm1_printer", name: :prusa_i3dm_assembled, title: "3D Printer - prusa i3DM fully assembled", title_it: "Stampante 3D - prusa i3DM assemblata", original_price: 799, price: 0, image: 0 },
  { cat: :"3dm1_printer", name: :prusa_i3dm_kit, title: "3D Printer - prusa i3DM kit", title_it: "Stampante 3D - prusa i3DM kit di assemblaggio", original_price: 599, price: 0, image: 0 },  
  { cat: :"3dm1_printer", name: :prusa_i3dm_plastic_parts, title: "3D Printer - prusa i3DM plastic parts", title_it: "Stampante 3D - prusa i3DM parti stampate", original_price: 49, price: 8, image: 0 },  
  
  # extruders
  { cat: :extruders, name: :greg_extruder_assembled_175, title: "Extruder Greg assembled 1.75mm", title_it: "Extruder Greg assemblato 1.75mm", original_price: 70, price: 32, image: 0, specs: "0.35mm nozzle - 1.75mm filament",  specs_it: "foro di estrusione 0.35mm - filamento 1.75mm", description: "", description_it: "" },
  { cat: :extruders, name: :jhead_assembled, title: "JHead assembled", title_it: "JHead assemblata", original_price: 50, price: 32, image: 0, specs: "0.35mm nozzle - 1.75mm filament",  specs_it: "foro di estrusione 0.35mm - filamento 1.75mm", description: "", description_it: "" },
  { cat: :extruders, name: :jhead_unassembled, title: "JHead kit", title_it: "JHead kit", original_price: 40, price: 32, image: 0, specs: "0.35mm nozzle - 1.75mm filament",  specs_it: "foro di estrusione 0.35mm - filamento 1.75mm", description: "", description_it: "" },
  #{ cat: :extruders, name: :, title: "", title_it: "", original_price: 0, price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  
  
  # linear motion
  { cat: :linear_motion, name: :"3dm1_x_assembled", title: "", title_it: "", original_price: 0, price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  { cat: :linear_motion, name: :"3dm1_y_assembled", title: "", title_it: "", original_price: 0, price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  { cat: :linear_motion, name: :"3dm1_x_kit", title: "", title_it: "", original_price: 0, price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  { cat: :linear_motion, name: :"3dm1_y_kit", title: "", title_it: "", original_price: 0, price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  { cat: :linear_motion, name: :axis_kit, title: "", title_it: "", original_price: 0, price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  { cat: :linear_motion, name: :lm8uu_linear_bearings, title: "", title_it: "Cuscinetti lineari diametro 8mm", original_price: 0.40, price: 1.50, image: 0, specs: "",  specs_it: "diametro: 8mm", description: "", description_it: "Cuscinetti lineari LM8UU 8mm usati nella maggior parte delle stampanti open source/hardware." },
  { cat: :linear_motion, name: :smooth_roads_8mm, title: "", title_it: "Barre rettificate 8mm", original_price: 3, price: 4, image: 0, specs: "",  specs_it: "spessore 8mm lunghezza 1m", description: "", description_it: "Barra rettificata lunga 1m, spessore 8mm, usata per comporre gli assi di movimento" },
  #{ cat: :linear_motion, name: :, title: "", title_it: "", original_price: 0, price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  
  
  #  vslot linear motion
  { cat: :vslot, name: :vslot, title: "Vslot 20x20", title_it: "Vslot 20x20",  specs: "1mt black vslot 20x20", original_price: 8, price: 13, description: "Vslot profiles", description_it: "Profili a V in alluminio anodizzato nero", image: 1 },
  
  # motors
  { cat: :motors, name: :small_nema17_stepper_motor, title: "", title_it: "nema 17 mini stepper motor", original_price: 10, price: 14, image: 0, specs: "",  specs_it: "nema 17 mini stepper motor peso 285g", description: "", description_it: "mini stepper motor per estrusore ma anche per motorizzare gli assi di movimento" },
  { cat: :motors, name: :, title: "", title_it: "", original_price: 0, price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  { cat: :motors, name: :, title: "", title_it: "", original_price: 0, price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  { cat: :motors, name: :, title: "", title_it: "", original_price: 0, price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  #{ cat: :motors, name: :, title: "", title_it: "", original_price: 0, price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  
  
  # printed parts
  { cat: :printed_parts, name: :, title: "", title_it: "", original_price: 0, price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  { cat: :printed_parts, name: :, title: "", title_it: "", original_price: 0, price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  #{ cat: :printed_parts, name: :, title: "", title_it: "", original_price: 0, price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  
  # filament
  { cat: :filament, name: :, title: "", title_it: "", original_price: 0, price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  #{ cat: :filament, name: :, title: "", title_it: "", original_price: 0, price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  
  
  # wires
  { cat: :wires, name: :wires_kit, title: "", title_it: "", original_price: 0, price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  
  
  # photography
  { cat: :photography, name: :wires_kit, title: "", title_it: "", original_price: 0, price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  #{ cat: :photography, name: :wires_kit, title: "", title_it: "", original_price: 0, price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  
  # - spallaccio
  # - slider manuale
  # - slider motorizzato
  
  
  { name: :, title: "", title_it: "",  specs: "", original_price: 0, price: 0, description: "", description_it: "", image: 2 },
  { name: :, title: "", title_it: "",  specs: "", original_price: 0, price: 0, description: "", description_it: "", image: 2 },
  { name: :, title: "", title_it: "",  specs: "", original_price: 0, price: 0, description: "", description_it: "", image: 2 },
  { name: :, title: "", title_it: "",  specs: "", original_price: 0, price: 0, description: "", description_it: "", image: 2 },
  { name: :, title: "", title_it: "",  specs: "", original_price: 0, price: 0, description: "", description_it: "", image: 2 },
  { name: :, title: "", title_it: "",  specs: "", original_price: 0, price: 0, description: "", description_it: "", image: 2 },
  { name: :, title: "", title_it: "",  specs: "", original_price: 0, price: 0, description: "", description_it: "", image: 2 },
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  {  name: :assembled_extruder_jhead, specs: "2kg", original_price: 0, price: 0, description: "" },    
  {  name: :linear_bearings, specs: nil, original_price: 0, price: 0, description: "" },
  {  name: :belt_set1, specs: nil, original_price: 0, price: 0, description: "" },
  {  name: :belt_set2, specs: "with pulleys", original_price: 0, price: 0, description: "" },
  {  name: :z_couplers, specs: "with pulleys", original_price: 0, price: 0, description: "" },
  {  name: :axis_transmission_set_3, specs: nil, original_price: 0, price: 0, description: "" },
  
  # oggetti stampati 3d
  {  name: :axis_transmission_set_3, specs: nil, original_price: 0, price: 0, description: "" },
  
  
]


# get "/shop" do
#   haml :products
# end