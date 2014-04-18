
THREEDM1_INFOS = { specs: "extruder 0.35mm - max speed: 90mm/s - travel speed: 100mm/s",  specs_it: "estrusore: 0.35mm - velocità standard: 55mm/s - velocità max: 90mm/s - travel speed: 100mm/s", description: "", description_it: "" }

JHEAD_INFOS = { specs: "0.35mm nozzle - 1.75mm filament / 0.5mm nozzle - 3mm filament",  specs_it: "foro di estrusione 0.35mm - filamento 1.75mm - parti plastiche - j-head " }

CABLES_INFOS = { specs: "length: 70 cm - dupont cable - 1 cable",  specs_it: "lunghezza: 70 cm - cavo dupont - quantità: 1 cavo", description: "", description_it: ""  }

PRODUCTS = [
  # 3DM1 printer - 3dm1_printer
  { cat: :"3dm1_printer", name: :"3dm1_printer_assembled",
    title: "3DM1 assembled", title_it: "3DM1 assemblata", original_price: 205, image: 1,
    price: 699 }.merge(THREEDM1_INFOS),
  { cat: :"3dm1_printer", name: :"3dm1_printer_kit",
    title: "3D Printer - 3DM1 kit", title_it: "3DM1 kit di assemblaggio",
    price: 499, original_price: 205, image: 32 }.merge(THREEDM1_INFOS),
  { cat: :"3dm1_printer", name: :"3dm1_printer_plastic_parts",
    title: "3D Printer - 3DM1 plastic parts", title_it: "3DM1 parti stampate",
    price: 49, original_price: 10, image: 4 },


  # prusa i3DM   - prusa_i3dm
  { cat: :"prusa_i3", name: :prusa_i3dm_assembled,
    title: "Prusa i3DM assembled", title_it: "Prusa i3DM assemblata",
    price: 799, original_price: 275, image: 2, specs: "nozzle size 0.35mm - filament 1.75mm",  specs_it: "foro di estrusione 0.35mm - filamento 1.75mm - frame alluminio - velocità massima: 150mm/s - precisione: 50 micron", description: "PrusaI3 is the most common opensource 3d printer. Easy to mount, has a great stability and can reach speed until 150mm/s.", description_it: "La PrusaI3 è la stampante opensource più diffusa nel mondo dei makers. Facile da montare, ha una stabilità notevole grazie al frame in alluminio che gli permette di raggiungere i 150mm/s di velocità. La nostra PrusaI3DM ha subito delle  modifiche sia strutturali che di software, per essere performante al 100%" },
  { cat: :"prusa_i3", name: :prusa_i3dm_kit,
    title: "Prusa i3DM kit", title_it: "Prusa i3DM kit di assemblaggio",
    price: 599, original_price: 275, image: 33, specs: "nozzle size 0.35mm - filament 1.75mm",  specs_it: "foro di estrusione 0.35mm - filamento 1.75mm - frame alluminio - velocità massima: 150mm/s - precisione: 50 micron", description: "PrusaI3 is the most common opensource 3d printer. Easy to mount, has a great stability and can reach speed until 150mm/s. Here in the kit version.", description_it: "La PrusaI3 è la stampante opensource più diffusa nel mondo dei makers. Facile da montare, ha una stabilità notevole grazie al frame in alluminio che gli permette di raggiungere i 150mm/s di velocità. La nostra PrusaI3DM ha subito delle  modifiche sia strutturali che di software, per essere performante al 100%, qui nella versione kit."  },
  { cat: :"prusa_i3", name: :prusa_i3dm_plastic_parts,
    title: "Prusa i3DM plastic parts", title_it: "Prusa i3DM parti stampate",
    price: 49, original_price: 8, image: 4 },
  { cat: :"prusa_i3", name: :prusa_i3dm_frame,
    title: "Prusa i3DM aluminum frame", title_it: "Prusa i3DM frame in alluminio",
    price: 79, original_price: 59, image: 3, specs: "aluminum - frame and plate - color: blue",  specs_it: "alluminio - frame e piatto di stampa - colore: blu", description: "PrusaI3 frame gives to your printer high stability and high quality prints. ", description_it: "Il frame della PrusaI3 dà alla stampante una notevole stabilità che consente di fare delle stampe di altissima precisione."},

  # extruders
  { cat: :extruders, name: :greg_extruder_assembled_175,
    title: "Extruder Greg  1.75mm assembled", title_it: "Estrusore Greg  1.75mm assemblato",
    price: 70, original_price: 32, image: 6, description: "Extruder Greg fully assembled. Plastic parts, stepper motor Nema17 small, j-head filament 1.75mm and nozzle size 0.35mm", description_it: "Estrusore modello Greg assemblato. Completo delle parti plastiche, motore Nema17 small, con j-head per filamento da 1.75mm e foro di estrusione da 0.35mm.  " }.merge(JHEAD_INFOS),
  { cat: :extruders, name: :greg_extruder_assembled_3,
    title: "Extruder Greg  3mm assembled", title_it: "Estrusore Greg  3mm assemblato",
    price: 70, original_price: 32, image: 6, specs: "nozzle size 0.5mm - filament 3mm",  specs_it: "foro di estrusione 0.5mm - filamento 3mm", description: "Extruder Greg fully assembled. Plastic parts, stepper motor Nema17 small, j-head filament 3mm and nozzle size 0.5mm", description_it: "Estrusore modello Greg assemblato. Completo delle parti plastiche, motore Nema17 small, con j-head per filamento da 3mm e foro di estrusione da 0.5mm.  " },
  { cat: :extruders, name: :jhead_assembled175,
    title: "JHead assembled 1.75mm", title_it: "JHead assemblata 1.75mm",
    price: 50, original_price: 32, image: 5, specs: "nozzle size 0.35mm - filament 1.75mm",  specs_it: "foro di estrusione 0.35mm - filamento 1.75mm", description: "J-head fully assembled with peek, ptfe, thermistor and termocouple", description_it: "J-head assemblata completa di peek, ptfe, termistore e termocoppia." },
  { cat: :extruders, name: :jhead_assembled3,
    title: "JHead assembled 3mm", title_it: "JHead assemblata 3mm",
    price: 50, original_price: 32, image: 5, specs: "nozzle size 0.5mm - filament 3mm ",  specs_it: "foro di estrusione 0.5mm - filamento 3mm", description: "J-head fully assembled with peek, ptfe, thermistor and termocouple", description_it: "J-head assemblata completa di peek, ptfe, termistore e termocoppia." },
  { cat: :extruders, name: :jhead_unassembled175,
    title: "JHead kit 1.75mm", title_it: "JHead kit 1.75mm",
    price: 40, original_price: 32, image: 7, specs: "nozzle size 0.35mm - filament 1.75mm",  specs_it: "foro di estrusione 0.35mm - filamento 1.75mm", description: "Kit j-head, with peek, ptfe, thermistor and termocouple", description_it: "J-head in kit, completa di tutti i componenti, peek, ptfe, termistore e termocoppia da assemblare." },
  { cat: :extruders, name: :jhead_unassembled3,
    title: "JHead kit 3mm", title_it: "JHead kit 3mm",
    price: 40, original_price: 32, image: 7, specs: "nozzle size 0.5mm - filament 3mm",  specs_it: "foro di estrusione 0.5mm - filamento 3mm", description: "", description_it: "J-head in kit, completa di tutti i componenti, peek, ptfe, termistore e termocoppia da assemblare." },
  { cat: :extruders, name: :thermistor,
    title: "Thermistor 100k", title_it: "Termistore 100k",
    price: 3.50, original_price: 0.50, image: 9, specs: "100k",  specs_it: "100k", description: "100k thermistor for jhead and compatibles", description_it: "Termistore 100k per jhead e compatibili" },
  { cat: :extruders, name: :resistor_cartridge,
    title: "Cartridge resistor", title_it: "Resistore a cartuccia",
    price: 3.50, original_price: 0.50, image: 8, specs: "12v",  specs_it: "12v", description: "Cartridge resistor for jhead and compatibles", description_it: "Resistore a cartuccia per jhead e compatibili" },
  { cat: :extruders, name: :ptfe_tubing175,
    title: "Ptfe tubing, 2mm inner/6mm outer(10cm)", title_it: "PTFE-tubicino, 2mm IN/6mm OUT(10cm)",
    price: 3, original_price: 1, image: 11, specs: "2mm IN/6mm OUT (10cm)",  specs_it: "2mm IN/6mm OUT (10cm)", description: "PTFE tube for Jhead", description_it: "Tubicino di PTFE per Jhead" },
  { cat: :extruders, name: :ptfe_tubing3,
    title: "Ptfe tubing, 3.18mm inner/6mm outer(10cm)", title_it: "PTFE-tubicino, 3.18mm IN/6mm OUT(10cm)",
    price: 3, original_price: 1, image: 11, specs: "3.18mm IN/6mm OUT (10cm)",  specs_it: "3.18mm IN/6mm OUT (10cm)", description: "PTFE tube for Jhead", description_it: "Tubicino di PTFE per Jhead" },
  { cat: :extruders, name: :nozzle175,
    title: "Nozzle 0.35mm for 1.75mm filament", title_it: "Nozzle 0.35mm per filamento da 1.75mm",
    price: 15, original_price: 10, image: 10, specs: "nozzle size 0.35mm - filament 1.75mm",  specs_it: "foro di estrusione 0.35mm - filamento 1.75mm", description: "Nozzle for j-head extruder, nozzle size 0.35mm filament 1.75mm", description_it: "Nozzle per estrusore Jhead e compatibili, con foro di uscita da 0.35mm per filamento da 1.75mm" },
  { cat: :extruders, name: :nozzle3,
    title: "Nozzle 0.5mm for 3mm filament", title_it: "Nozzle 0.5mm per filamento da 3mm",
    price: 15, original_price: 10, image: 10, specs: "nozzle size 0.5mm - filament 3mm",  specs_it: "foro di estrusione 0.5mm - filamento 3mm", description: "Nozzle for j-head extruder, nozzle size 0.5mm filament 3mm", description_it: "Nozzle per estrusore Jhead e compatibili, con foro di estrusione da 0.5mm per filamento da 3mm" },


  # linear motion
  { cat: :linear_motion, name: :"aluminium_pulley_gt2",
    title: "Aluminium pulley GT2", title_it: "Puleggia in alluminio GT2",
    price: 4, original_price: 0, image: 12, specs: "GT2 - aluminium - set screw",  specs_it: "GT2 - Alluminio - Grano in acciaio", description: "", description_it: "Puleggia in alluminio per cinghia GT2 con grano in acciaio per bloccarlo all'asse del motore." },
  { cat: :linear_motion, name: :lm8uu_linear_bearings,
    title: "Linear bearing 8mm", title_it: "Cuscinetti lineari diametro 8mm",
    price: 1.50, original_price: 0.40, image: 14, specs: "8mm diameter",  specs_it: "diametro: 8mm", description: "Linear bearing LM8UU 8mm used in the largest part of the open source/hardware 3d printers", description_it: "Cuscinetti lineari LM8UU 8mm usati nella maggior parte delle stampanti open source/hardware." },
  { cat: :linear_motion, name: :smooth_roads_8mm,
    title: "Smooth roads 8mm - 1M", title_it: "Barre rettificate 8mm - 1M",
    price: 6, original_price: 4, image: 15, specs: "diameter 8mm - length 1m",  specs_it: "spessore 8mm - lunghezza 1m", description: "Smooth road length 1m, used to compose movement axes.", description_it: "Barra rettificata lunga 1m, spessore 8mm, usata per comporre gli assi di movimento" },
  { cat: :linear_motion, name: :timing_belt,
    title: "Belt GT2 1m x 6mm", title_it: "Cinghia GT2 1m x 6mm",
    price: 5, original_price: 0.9, image: 13, specs: "GT2 - pitch 2mm - length: 1m - thickness: 6mm",  specs_it: "GT2 - passo 2mm - lunghezza: 1m - spessore: 6mm", description: "Belt GT2 1 meter length, thickness 6mm, used principally for the axes movement.", description_it: "Cinghia GT2 lunga un metro e spessa 6 mm, utilizzata per far scorrere gli assi di movimento." },
  { cat: :linear_motion, name: :z_coupler,
    title: "Z-axis motor coupling M8", title_it: "Z Coupler M8 per motore asse z",
    price: 3, original_price: 0.6, image: 16, specs: "M8 - block screw - no holes - spring",  specs_it: "M8 - viti bloccanti - no fori nell'asse del motore - molla centrale", description: "Coupler M8 with central spring, easy to mount, no need holes in the motor axes", description_it: "Coupler M8 con molla centrale, facile da montare non c'è bisogno di forare l'asse del motore, si blocca con delle viti a brugola." },



  #  vslot linear motion
  { cat: :vslot, name: :vslot_profile,
    title: "Vslot 20x20", title_it: "Vslot 20x20",  specs: "1mt black vslot 20x20",
    price: 17, original_price: 9, description: "Vslot profiles", description_it: "Profili a V in alluminio anodizzato nero", image: 34 },
  { cat: :vslot, name: :vslot_profile_40,
    title: "Vslot 20x40", title_it: "Vslot 20x40",  specs: "1mt black vslot 20x40",
    price: 22, original_price: 12, description: "Vslot profiles", description_it: "Profili a V in alluminio anodizzato nero", image: 34 },
  { cat: :vslot, name: :vslot_wheel,
    title: "Vslot wheel", title_it: "Ruote per Vslot",  specs: "Quantity: 1 wheel", specs_it: "Quantita': 1 ruota",
    price: 2, original_price: 1.2, description: "V-slot wheel. Necessary two v-slot bearings.", description_it: "Ruote per barre alluminio profilo V-slot.\n Montano due cuscinetti per ogni ruota.", image: 17 },
  { cat: :vslot, name: :vslot_wheel_small,
    title: "Mini Vslot wheel", title_it: "Ruote per Vslot piccole", specs: "Quantity: 1 wheel", specs_it: "Quantita': 1 ruota",
    price: 2, original_price: 1.2, description: "V-slot wheel. Necessary two v-slot (small) bearings.", description_it: "Ruote per barre alluminio profilo V-slot.\n Montano due cuscinetti (piccoli) per ogni ruota.", image: 17 },
  { cat: :vslot, name: :vslot_bearing,
    title: "Vslot wheels bearing big (625ZZ)", title_it: "Cuscinetti per ruote Vslot grandi (625ZZ)",  specs: "",
    price: 1.60, original_price: 0.40, description: "625ZZ - internal diameter: 5mm.", description_it: "625ZZ - diametro interno: 5mm", image: 18 },
  { cat: :vslot, name: :vslot_bearing_small,
    title: "Vslot wheels bearing small (623ZZ)", title_it: "Cuscinetti per ruote Vslot piccoli (623ZZ)",  specs: "",
    price: 1.20, original_price: 0.25, description: "623ZZ - internal diameter: 3mm.", description_it: "623ZZ - diametro interno: 3mm", image: 18 },

  # motors
  { cat: :motors, name: :small_nema17_stepper_motor,
    title: "NEMA17 mini stepper motor", title_it: "Motori stepper NEMA17 piccoli",
    price: 15, original_price: 10, image: 19, specs: "",  specs_it: "nema 17 mini stepper motor peso 285g", description: "", description_it: "mini stepper motor per estrusore ma anche per motorizzare gli assi di movimento" },
  { cat: :motors, name: :nema17_stepper_motor,
    title: "NEMA17 stepper motor", title_it: "Motori stepper NEMA17",
    price: 19, original_price: 15, image: 20, specs: "",  specs_it: "Nema 17 stepper motor peso 285g", description: "Stepper motor for extruders and for movement axis", description_it: "Stepper motor per estrusore ma anche per motorizzare gli assi di movimento" },


  # printed parts
  { cat: :printed_parts, name: :threedm1_printed_parts,
    title: "Complete set of plastics for 3DM1", title_it: "Parti plastiche per la 3DM1",
    price: 49, original_price: 10, image: 4, specs: "abs - pla - plastic parts - 0.2 layer height",  specs_it: "abs - pla - parti plastiche - 0.2 layer height", description: "Complete set of plastic parts for 3DM1 printer, ABS, PLA", description_it: "Set completo delle parti plastiche per la stampante 3DM1, materiali utilizzati Abs e Pla" },
  { cat: :printed_parts, name: :prusa_printed_parts,
    title: "Complete set of plastics for PrusaI3DM", title_it: "Parti plastiche per la PrusaI3DM ",
    price: 49, original_price: 10, image: 4, specs: "abs - pla - plastic parts - 0.2 layer height",  specs_it: "abs - pla - parti plastiche - 0.2 layer height", description: "Complete set of plastic parts for PrusaI3DM printer, ABS, PLA", description_it: "Set completo delle parti plastiche per la stampante PrusaI3DM, materiali utilizzati Abs e Pla" },
  { cat: :printed_parts, name: :greg175_printed_parts,
    title: "Greg extruder 1.75mm", title_it: "Estrusore greg 1.75mm",
    price: 14.99, original_price: 0, image: 21, specs: "filament 1.75mm - Abs - Pla - hole for j-head",  specs_it: "filamento 1.75mm - abs - pla - foro per j-head", description: "Greg extruder for j-head, filament hole 1.75mm", description_it: "Estrusore greg per j-head con foro per filamento da 1.75mm." },
  { cat: :printed_parts, name: :greg3_printed_parts,
    title: "Greg extruder 3mm", title_it: "Estrusore greg 3mm",
    price: 14.99, original_price: 0, image: 21, specs: "filament 3mm - Abs - Pla - hole for j-head",  specs_it: "filamento 3mm - abs - pla - foro per j-head", description: "Greg extruder for j-head, filament hole 3mm", description_it: "Estrusore greg per j-head con foro per filamento da 3mm." },


  # filament
  { cat: :filament, name: :filament_175pla,
    title: "1.75mm PLA filament 1kg", title_it: "PLA 1.75mm bobina da 1kg",
    price: 34, original_price: 0, image: 22,
    specs: "pla - 190°/240° - bobina 1kg",  specs_it: "",
    description: "", description_it: ""
  },
  { cat: :filament, name: :filament_3pla,
    title: "3mm PLA filament 1kg", title_it: "PLA 3mm bobina da 1kg",
    price: 34, original_price: 0, image: 22,
    specs: "pla - 190°/240° - bobina 1kg",  specs_it: "",
    description: "", description_it: ""
  },
  { cat: :filament, name: :filament_175abs ,
    title: "1.75mm ABS filament 1kg", title_it: "ABS 1.75mm bobina da 1kg",
    price: 34, original_price: 0, image: 22, specs: "abs - 190°/240° - bobina 1kg",  specs_it: "", description: "", description_it: ""
  },
  { cat: :filament, name: :filament_3abs ,
    title: "3mm ABS filament 1kg", title_it: "ABS 3mm bobina da 1kg",
    price: 34, original_price: 0, image: 22, specs: "abs - 220°/260° - bobina 1kg",  specs_it: "abs - 220°/260° - bobina 1kg", description: "", description_it: "" },

  { cat: :filament, name: :filament_175wood ,
    title: "1.75mm Wood filament 250g", title_it: "1.75mm bobina da 250g",
    price: 39, original_price: 20, image: 23, specs: "Wood (LayWoo) - 190°/240° - spool 250g",  specs_it: "Wood (LayWoo) - 190°/240° - bobina 250g", description: "", description_it: "" },
  { cat: :filament, name: :filament_3wood ,
    title: "3mm Wood (LayWoo) filament 250g", title_it: "Wood (LayWoo) 3mm bobina da 250g",
    price: 39, original_price: 20, image: 23, specs: "wood - 190°/240° - spool 250g",  specs_it: "wood - 190°/240° - bobina 250g", description: "", description_it: "" },

  { cat: :filament, name: :filament_175rubber ,
    title: "1.75mm Rubber filament 500g", title_it: "Rubber 1.75mm bobina da 500g",
    price: 49, original_price: 35, image: 22, specs: "rubber - 220°/260° - spool 500g",  specs_it: "wood - 190°/240° - bobina 250g", description: "", description_it: "" },
  { cat: :filament, name: :filament_3rubber ,
    title: "3mm Rubber filament 500g", title_it: "Rubber 3mm bobina da 500g",
    price: 49, original_price: 35, image: 22, specs: "rubber - 220°/260° - spool 500g",  specs_it: "wood - 190°/240° - bobina 250g", description: "", description_it: "" },


  # cables and wires
  { cat: :cables_and_wires, name: :wires_kit_4pin,
    title: "Jumper Cable - 4 pin", title_it: "Cavi Jumper - 4 pin",
    price: 0.90, original_price: 0.10, image: 35 }.merge(CABLES_INFOS),
  { cat: :cables_and_wires, name: :wires_kit_3pin,
    title: "Jumper Cable - 3 pin", title_it: "Cavi Jumper - 3 pin",
    price: 0.85, original_price: 0.08, image: 36 }.merge(CABLES_INFOS),
  { cat: :cables_and_wires, name: :wires_kit_2pin,
    title: "Jumper Cable - 2 pin", title_it: "Cavi Jumper - 2 pin",
    price: 0.80, original_price: 0.07, image: 37 }.merge(CABLES_INFOS),

  # electronics
    { cat: :electronics, name: :electronics_minitronics,
      title: "Control board: Minitronics", title_it: "Scheda: Minitronics",
      price: 94, original_price: 65, image: 27,
      specs: "drives 5+1 motors - steppers drivers: onboard - RepRap compatible - arduino based - voltages: 12V / 24V",  specs_it: "drives 5+1 motors - steppers drivers: included onboard - RepRap compatible - arduino based - voltages: 12V / 24V",
      description: "10A power supply is recommended.", description_it: "E' necessario un alimentatore da almeno 10A."
    },
    { cat: :electronics, name: :electronics_azteeg_v3,
      title: "Control board: Azteeg v3", title_it: "Scheda: Azteeg v3",
      price: 80, original_price: 50, image: 38,
      specs: "drives 5 motors - steppers drivers: included - RepRap compatible - arduino based - voltages: 12V / 24V",  specs_it: "drives 5+1 motors - steppers drivers: included onboard - RepRap compatible - arduino based - voltages: 12V / 24V",
      description: "", description_it: ""
    },
    { cat: :electronics, name: :electronics_sanguinololu,
      title: "Control board: Sanguinololu", title_it: "Scheda: Sanguinololu",
      price: 84, original_price: 62, image: 26,
      specs: "drives 5 motors - steppers drivers: included - RepRap compatible - arduino based - voltage: 12V",  specs_it: "drives 5+1 motors - steppers drivers: included onboard - RepRap compatible - arduino based - voltages: 12V / 24V",
      description: "", description_it: ""
    },
    { cat: :electronics, name: :electronics_melzi,
      title: "Control board: Melzi", title_it: "Scheda: Melzi",
      price: 79, original_price: 58, image: 39,
      specs: "drives 5 motors - steppers drivers: onboard - RepRap compatible - arduino based - voltages: 12V / 24V",  specs_it: "drives 5+1 motors - steppers drivers: included onboard - RepRap compatible - arduino based - voltages: 12V / 24V",
      description: "", description_it: ""
    },
    { cat: :electronics, name: :alimentatore10,
      title: "Power supply 12v 10a", title_it: "Alimentatore 12v 10a",
      price: 15, original_price: 9, image: 28,
      specs: "12V - 10A",  specs_it: "12V - 10A ",
      description: "3D printer power supply. 12V 10A. Required on Minitronics", description_it: "Alimentatore per stampante 3D e compatibili. 12V 10A. Necessario per minitronics."
    },

    { cat: :electronics, name: :alimentatore5,
      title: "Power supply 12v 5a", title_it: "Alimentatore 12v 5a",
      price: 12, original_price: 7, image: 28,
      specs: "12V - 5A",  specs_it: "12V - 5A ",
      description: "3D printer power supply. 12V 5A.", description_it: "Alimentatore per stampante 3D e compatibili. 12V 5A."
    },
    { cat: :electronics, name: :end_stop,
      title: "End stop", title_it: "End stop",
      price: 0.9, original_price: 0.1, image: 24,
      description: "3D printer end stop for movement axes.", description_it: "End stop per gli assi di movimento per stampante 3D."
    },
    { cat: :electronics, name: :fan,
      title: "Fan 40x40x10mm", title_it: "Ventola 40x40x10mm",
      price: 2.50, original_price: 0.5, image: 25,
      specs: "12V",  specs_it: "12V",
      description: "Axial fan 40x40x10mm, for cooling extruders, prints and board (especially stepper drivers), used in most reprap 3d printers.", description_it: "Ventola usata in molti progetti di stampanti 3d reprap, utilizzata per raffreddare estrusori, pezzo in stampa e schede (specialmente gli stepper drivers dei motori). Misure: 40x40x10mm."
    },



  # supplies
  { cat: :supplies, name: :switch_standard,
    title: "Standard Switch", title_it: "Interruttore standard",
    price: 1, original_price: 0.1, image: 40, specs: "",  specs_it: "", description: "", description_it: "" },
  { cat: :supplies, name: :kapton,
    title: "Kapton tape 55mm/33m", title_it: "Nastro Kapton 55mm/33m",
    price: 12, original_price: 0, image: 29, specs: "33M - 55MM",  specs_it: "33M - 55MM", description: "", description_it: "" },
  { cat: :supplies, name: :colla,
    title: "Glue tube", title_it: "Colla stick",
    price: 1, original_price: 0, image: 30, specs: "",  specs_it: "", description: "Glue for your printer bed.", description_it: "Colla stick per tenere la vostra stampa incollata al piatto." },
  { cat: :supplies, name: :scotch_carta,
    title: "Paper tape", title_it: "Scotch di carta",
    price: 1.5, original_price: 0, image: 31, specs: "",  specs_it: "", description: "Paper tape for printer bed", description_it: "Scotch di carta per il piano di stampa." },

  # offerte
  #{ cat: :offerte, name: :printed_parts,
  #  title: "", title_it: "",
  #  price: 0, original_price: 0, image: 0, specs: "",  specs_it: "", description: "", description_it: "" },

  # photography

  # - spallaccio
  # - slider manuale
  # - slider motorizzato


  # other
  { cat: :other, name: :heated_bed,
    title: "Heated bed", title_it: "Piano riscaldato",
    price: 25, original_price: 0, image: 41,
    specs: "PCB model: MK2 - Ideal voltages: 12 / 24 V - Dimensions: 21,4 x 21,4 cm - Dimensions (print area): 20 x 20 cm",
    specs_it: "Modello del circuito stampato (PCB): MK2 - Tensioni adatte: 12 / 24 V - Dimensioni: 21,4 x 21,4 cm - Dimensioni aread di stampa: 20 x 20 cm",
    description: "", description_it: ""
  },
  { cat: :other, name: :heated_bed_glass,
    title: "Heated bed glass", title_it: "Vetro temperato per piano riscaldato",
    price: 15, original_price: 0, image: 42,
    specs: "material: borosilicate glass",  specs_it: "materiale: vetro temperato",
    description: "", description_it: ""
  },

  { cat: :other, name: :bearing_608,
    title: "Bearings (608ZZ)", title_it: "Cuscinetti rotondi (608ZZ)",  specs: "",
    price: 1.20, original_price: 0.25, description: "608ZZ - internal diameter: 8mm.", description_it: "608ZZ - diametro interno: 8mm", image: 18 },
  { cat: :other, name: :vslot_bearing_small,
    title: "Bearings (623ZZ)", title_it: "Cuscinetti rotondi (623ZZ)",  specs: "",
    price: 1.20, original_price: 0.25, description: "623ZZ - internal diameter: 3mm.", description_it: "623ZZ - diametro interno: 3mm", image: 18 },
  { cat: :other, name: :bearing_624,
    title: "Bearings (624ZZ)", title_it: "Cuscinetti rotondi (624ZZ)",  specs: "",
    price: 1.20, original_price: 0.25, description: "624ZZ - internal diameter: 4mm.", description_it: "624ZZ - diametro interno: 4mm", image: 18 },

]



CATEGORIES = PRODUCTS.map{ |prod| prod[:cat] }.compact.uniq

