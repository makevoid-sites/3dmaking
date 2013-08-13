PATH = File.expand_path "../../", __FILE__
# require "#{PATH}/slicer"

class Slicer

  def initialize(file, settings=nil)
    @file = file
    @settings = settings
  end


  def slice
    settings = "-s layerThickness=690 -s filamentDiameter=3000 -s filamentFlow=10 -s extrusionWidth=1000"
    settings = @settings if settings
    
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

  def slicer(settings)
    file   = "hollow_cylinder"
    #  -s extrusionWidth=500 # almost extruder size
    out = Slicer.new(file, settings).slice
    out.should =~ /Filament/
    out
  end
  
  let(:slice_ideal) do
    settings = "-s layerThickness=500 -s filamentDiameter=3000 -s extrusionWidth=500 -s filamentFlow=100 -s printSpeed=100 -s infillSpeed=100 -s moveSpeed=100"
    @@slice_ideal ||= slicer(settings)
  end

  it "has the correct amount of layers" do
    out = slice_ideal
    match_property(out, :layer_count).should == 20
  end
  
  it "uses the right amount of filament" do
    out = slice_ideal
    match_property(out, :filament).should == 730 # mm
  end  
  
  it "prints in the right time" do
    out = slice_ideal
    match_property(out, :print_time).should == 120 # seconds
  end
    
    
  describe "[real]" do  
    
    let(:slice_real) do
      settings = "-s layerThickness=300 -s filamentDiameter=3000 -s extrusionWidth=400 -s filamentFlow=50 -s printSpeed=50 -s infillSpeed=50 -s moveSpeed=50"
      @@slice_real ||= slicer(settings)
    end
  
    it "has the correct amount of layers" do
      out = slice_real
      match_property(out, :layer_count).should == 33
    end
  
    it "uses the right amount of filament" do
      out = slice_real
      match_property(out, :filament).should == 530 # mm
    end  
  
    it "prints in the right time" do
      out = slice_real
      match_property(out, :print_time).should == 720 # seconds
    end
    
  end
  
  
  # it "slices an STL model " do
  #   file   = "hollow_cylinder"
  #   settings = "-s layerThickness=500 -s filamentDiameter=300 -s filamentFlow=100 -s extrusionWidth=50 -s printSpeed=1000 -s infillSpeed=10000 -s moveSpeed=10000"
  #   out = Slicer.new(file, settings).slice
  #   out.should =~ /Filament/ 
  #   
  # 
  #   match_property(out, :layer_count).should == 20
  #   match_property(out, :print_time).should == 34
  #   match_property(out, :filament).should == 73 
  # end


  # it "fails gracefully reporting the error"

  # xit "slices a different STL model " do
  #   file   = "blah"
  #   out = Slicer.new(file).slice
  #   out.should =~ /Filament/ 
  #   match_property(out, :filament).should == 647
  # end

end


