
THREEDM1_INFOS = { specs: "extruder 0.35mm - max speed: 90mm/s - travel speed: 100mm/s",  specs_it: "estrusore: 0.35mm - velocità standard: 55mm/s - velocità max: 90mm/s - travel speed: 100mm/s", description: "", description_it: "" }

JHEAD_INFOS = { specs: "0.35mm nozzle - 1.75mm filament / 0.5mm nozzle - 3mm filament",  specs_it: "foro di estrusione 0.35mm - filamento 1.75mm / foro di estrusione 0.5mm - filamento 3mm" }

PRODUCTS = [
  # 3DM1 printer - 3dm1_printer
  { cat: :"3dm1_printer", name: :"3dm1_printer_assembled", title: "3DM1 assembled", title_it: "3DM1 assemblata", original_price: 205, image: 0, price: 699 }.merge(THREEDM1_INFOS),
  { cat: :"3dm1_printer", name: :"3dm1_printer_kit", title: "3D Printer - 3DM1 kit", title_it: "3DM1 kit di assemblaggio", price: 499, original_price: 205, image: 0 }.merge(THREEDM1_INFOS),
  { cat: :"3dm1_printer", name: :"3dm1_printer_plastic_parts", title: "3D Printer - 3DM1 plastic parts", title_it: "3DM1 parti stampate", price: 49, original_price: 10, image: 2 }.merge(THREEDM1_INFOS),
  
  
  # prusa i3DM   - prusa_i3dm
  { cat: :"prusa_i3", name: :prusa_i3dm_assembled, title: "Prusa i3DM assembled", title_it: "Prusa i3DM assemblata", price: 799, original_price: 275, image: 0 },
  { cat: :"prusa_i3", name: :prusa_i3dm_kit, title: "Prusa i3DM kit", title_it: "Prusa i3DM kit di assemblaggio", price: 599, original_price: 275, image: 0 },  
  { cat: :"prusa_i3", name: :prusa_i3dm_plastic_parts, title: "Prusa i3DM plastic parts", title_it: "Prusa i3DM parti stampate", price: 49, original_price: 8, image: 0 },  
  
  # extruders
  { cat: :extruders, name: :greg_extruder_assembled_175, title: "Extruder Greg  1.75mm assembled", title_it: "Estrusore Greg  1.75mm assemblato", price: 70, original_price: 32, image: 0, description: "", description_it: "" }.merge(JHEAD_INFOS),
  { cat: :extruders, name: :jhead_assembled, title: "JHead assembled", title_it: "JHead assemblata", price: 50, original_price: 32, image: 0, description: "", description_it: "" }.merge(JHEAD_INFOS),
  { cat: :extruders, name: :jhead_unassembled, title: "JHead kit", title_it: "JHead kit", price: 40, original_price: 32, image: 0, description: "", description_it: "" }.merge(JHEAD_INFOS),
  { cat: :extruders, name: :thermistor, title: "Thermistor 100k", title_it: "Termistore 100k", price: 3.50, original_price: 0.50, image: 0, specs: "100k",  specs_it: "100k", description: "100k thermistor for jhead and compatibles", description_it: "Termistore 100k per jhead e compatibili" },
  { cat: :extruders, name: :resistor_cartridge, title: "Cartridge resistor", title_it: "Resistore a cartuccia", price: 3.50, original_price: 0.50, image: 0, specs: "12v",  specs_it: "12v", description: "Cartridge resistor for jhead and compatibles", description_it: "Resistore a cartuccia per jhead e compatibili" },
  { cat: :extruders, name: :ptfe_tubing, title: "Ptfe tubing, 2mm inner/6mm outer(10cm)", title_it: "PTFE-tubicino, 2mm IN/6mm OUT(10cm)", price: 3, original_price: 1, image: 0, specs: "2mm IN/6mm OUT (10cm)",  specs_it: "2mm IN/6mm OUT (10cm)", description: "PTFE tube for Jhead", description_it: "Tubicino di PTFE per Jhead" },
  { cat: :extruders, name: :nozzle, title: "Nozzle 0.35mm for 1.75mm filament", title_it: "Nozzle 0.35mm per filamento da 1.75mm", price: 0, original_price: 0, image: 0, specs: "hole 0.35mm / filament 1.75mm",  specs_it: "foro 0.35mm / filamento 1.75mm", description: "", description_it: "Nozzle per estrusore Jhead e compatibili, con foro di uscita da 0.35mm per filamento da 1.75mm" },
  #{ cat: :extruders, name: :, title: "", title_it: "", price: 0, original_price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  
  
  # linear motion
  { cat: :linear_motion, name: :"3dm1_x_assembled", title: "", title_it: "", price: 0, original_price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  { cat: :linear_motion, name: :lm8uu_linear_bearings, title: "", title_it: "Cuscinetti lineari diametro 8mm", original_price: 0.40, price: 1.50, image: 0, specs: "",  specs_it: "diametro: 8mm", description: "", description_it: "Cuscinetti lineari LM8UU 8mm usati nella maggior parte delle stampanti open source/hardware." },
  { cat: :linear_motion, name: :smooth_roads_8mm, title: "", title_it: "Barre rettificate 8mm", price: 3, original_price: 4, image: 0, specs: "",  specs_it: "spessore 8mm lunghezza 1m", description: "", description_it: "Barra rettificata lunga 1m, spessore 8mm, usata per comporre gli assi di movimento" },
  #{ cat: :linear_motion, name: :, title: "", title_it: "", price: 0, original_price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  
  
  #  vslot linear motion
  { cat: :vslot, name: :vslot, title: "Vslot 20x20", title_it: "Vslot 20x20",  specs: "1mt black vslot 20x20", price: 8, original_price: 13, description: "Vslot profiles", description_it: "Profili a V in alluminio anodizzato nero", image: 1 },
  
  # motors
  { cat: :motors, name: :small_nema17_stepper_motor, title: "NEMA17 mini stepper motor", title_it: "Motori stepper NEMA17 piccoli", price: 10, original_price: 14, image: 0, specs: "",  specs_it: "nema 17 mini stepper motor peso 285g", description: "", description_it: "mini stepper motor per estrusore ma anche per motorizzare gli assi di movimento" },

  #{ cat: :motors, name: :, title: "", title_it: "", price: 0, original_price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  
  
  # printed parts
  { cat: :printed_parts, name: :printed_parts, title: "", title_it: "", price: 0, original_price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  
  # filament
  { cat: :filament, name: :filamento , title: "", title_it: "", price: 0, original_price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  
  
  # cables and wires
  { cat: :cables_and_wires, name: :wires_kit, title: "", title_it: "", price: 0, original_price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  
  # electronics
  { cat: :electronics, name: :electronics, title: "", title_it: "", price: 0, original_price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" }, 
  
  # heated bed
  { cat: :heated_bed, name: :printed_parts, title: "", title_it: "", price: 0, original_price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" }, 
  
  # supplies
  { cat: :supplies, name: :printed_parts, title: "", title_it: "", price: 0, original_price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  
  # offerte
  { cat: :offerte, name: :printed_parts, title: "", title_it: "", price: 0, original_price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  
  # photography
  #{ cat: :photography, name: :, title: "", title_it: "", price: 0, original_price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },
  
  # - spallaccio
  # - slider manuale
  # - slider motorizzato
  
  
  # { name: :, title: "", title_it: "",  specs: "", price: 0, original_price: 0, description: "", description_it: "", image: 2 },
  # { name: :, title: "", title_it: "",  specs: "", price: 0, original_price: 0, description: "", description_it: "", image: 2 },
  # { name: :, title: "", title_it: "",  specs: "", price: 0, original_price: 0, description: "", description_it: "", image: 2 },
  # { name: :, title: "", title_it: "",  specs: "", price: 0, original_price: 0, description: "", description_it: "", image: 2 },
  # { name: :, title: "", title_it: "",  specs: "", price: 0, original_price: 0, description: "", description_it: "", image: 2 },
  # { name: :, title: "", title_it: "",  specs: "", price: 0, original_price: 0, description: "", description_it: "", image: 2 },
  # { name: :, title: "", title_it: "",  specs: "", price: 0, original_price: 0, description: "", description_it: "", image: 2 },
  # 
  
  
  
  {  name: :assembled_extruder_jhead, specs: "2kg", price: 0, original_price: 0, description: "" },    
  {  name: :linear_bearings, specs: nil, price: 0, original_price: 0, description: "" },
  {  name: :belt_set1, specs: nil, price: 0, original_price: 0, description: "" },
  {  name: :belt_set2, specs: "with pulleys", price: 0, original_price: 0, description: "" },
  {  name: :z_couplers, specs: "with pulleys", price: 0, original_price: 0, description: "" },
  {  name: :axis_transmission_set_3, specs: nil, price: 0, original_price: 0, description: "" },
  
  # oggetti stampati 3d
  {  name: :axis_transmission_set_3, specs: nil, price: 0, original_price: 0, description: "" },
  
  
]



CATEGORIES = PRODUCTS.map{ |prod| prod[:cat] }.compact.uniq

