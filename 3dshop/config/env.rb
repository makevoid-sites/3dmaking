require "bundler/setup"
Bundler.require :default

PATH = File.expand_path "../../", __FILE__

require "#{PATH}/slicer"

# app functions, move / encapsulate

SLICINGS = []

def add_slicing(slicing)
  slicing.id = SLICINGS.length
  SLICINGS << slicing
end


# seeds:

# slice hollow cylinder:

stl_name = "hollow_cylinder"
file = "#{PATH}/tmp/#{stl_name}.stl"
if File.exists? file
  stl = File.open file
  slicing = Slicer.new(stl_name, stl).slice
  add_slicing slicing
end
