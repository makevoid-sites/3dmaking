class Slicing
  attr_accessor :id, :file, :command, :output, :tempfile
  
  def initialize(file, tempfile)
    @file     = file
    @tempfile = tempfile
  end
end

class Slicer
  @@path = PATH || File.expand_path("../../", __FILE__)
  
  def initialize(stl, tempfile)
    @slicing = Slicing.new stl, tempfile
  end
  
  def slice
    file = @slicing.file
    tempfile = @slicing.tempfile
    `cp #{tempfile.path} #{@@path}/tmp/#{file}.stl`
    
    # Cura
    slicer = "/Applications/Cura/Cura.app/Contents/Resources/CuraEngine"
    profile = ""
    profile = "-i #{@@path}/conf/antani.ini"
    cmd = "#{slicer} -v -o #{@@path}/public/gcodes/#{file}.gcode #{profile} #{@@path}/tmp/#{file}.stl"
    @slicing.command = cmd
    puts "executing: #{cmd}"
    out = `#{cmd}` # --slice is -s
    puts "SLICING:\n#{out}"
    @slicing.output = out
    @slicing
    
    # Slic3r
    # slicer = "/Applications/Slic3r.app/Contents/MacOS/slic3r"
    # profile = ""
    # # profile = "--load #{@@path}/conf/antani.ini"
    # puts `#{slicer} -o #{@@path}/output/3dmaking_out.gcode #{profile}`
  end
end

# example usage:

# stl = ""
# slicer = Slicer.new stl
# gcode = slicer.generate_gcode


# Cura install:

# to be documented


# Slic3r install:

# # download slicer (slic3r) [to run in this folder]
# 
# SLICER_VERSION=0-9-10b
# SLICER_NAME=slic3r-linux-x86_64-$SLICER_VERSION
# wget http://dl.slic3r.org/linux/$SLICER_NAME.tar.gz
# tar xvf $SLICER_NAME.tar.gz
# rm $SLICER_NAME.tar.gz
# mv Slic3r slicer
# cd slicer
# ls
# ./bin/slicer
# 
# # osx
# # /Applications/Slic3r.app/Contents/MacOS/slic3r 