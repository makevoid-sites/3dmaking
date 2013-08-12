PATH = File.expand_path "../../", __FILE__
# require "#{PATH}/slicer"

class Slicer

  def initialize(file)
    @file = file
  end


  def slice

    settings = "-s layerThickness=690 -s filamentDiameter=3000 -s filamentFlow=10 -s extrusionWidth=1000"

    slicer = "/Applications/Cura/Cura.app/Contents/Resources/CuraEngine"
    output = "#{PATH}/public/gcodes/#{@file}.gcode"
    input  = "#{PATH}/tmp/#{@file}.stl"
    cmd = "#{slicer} -v #{settings} -o #{output} #{input}"
    
    out =  `#{cmd}`
    puts "Slicing..."
    puts out
    puts "-"*80

    out
  end

end


# ----

describe "Slicer" do

def match_property(out, property)
  prop_name = property.to_s.gsub(/_/, " ").capitalize
  match = out.match(/#{prop_name}: (.+)\n/)
  match[1].to_i if match
end


it "slices an STL model " do
  file   = "hollow_cylinder"
  out = Slicer.new(file).slice
  out.should =~ /Filament/ 
  match_property(out, :filament).should == 160
  match_property(out, :print_time).should == "..." 

end


# it "fails gracefully reporting the error"

xit "slices a different STL model " do
  file   = "blah"
  out = Slicer.new(file).slice
  out.should =~ /Filament/ 
  match_property(out, :filament).should == 647
end

end


