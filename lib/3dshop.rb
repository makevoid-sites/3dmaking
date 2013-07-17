# 3DShop implementation

user = User.create params[:email]

stl = user.upload_stl()
gcode = Slicer.generate stl
App.send user, gcode.cost # gcode.cost.class => Gcode::Cost
- page with spinner
- email > link to page with spinner

### good case (cost is ok)

user.pay gcode

 - payment (paypal) integration



> shipping
> returns


] Shop.slicer_configs = {...}

