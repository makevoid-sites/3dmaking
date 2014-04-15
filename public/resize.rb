# photos_src -> photos

# creates a copy of the same directories with the resized files

# configs

SIZE = "1300x700"
SIZE_THUMB = 130


# helpers

class String

  def without_first
    split("/")[1..-1].join("/")
  end

  def filenamize
    gsub(/\s+/, '_')
  end

end

def exec(cmd)
  puts "executing: #{cmd}"
  out = nil
  out = `#{cmd}`
  puts out
end

def mkdir(dir)
  exec "mkdir -p #{dir}"
end

def convert(src, dest)
  exec "convert '#{src}' -geometry #{SIZE} -density 72 #{dest.filenamize}"
end

def thumbs(src, dest)
  dim = SIZE_THUMB
  exec "convert '#{src}' -resize '#{dim}x#{dim}^' -gravity center -crop #{dim}x#{dim}+0+0 +repage -density 72 #{dest.filenamize}"
end


# main

exec "rm -rf ./products_img/*"
exec "rm -rf ./products_img_thumbs/*"

@dir_src = dir_src = File.expand_path("~/Dropbox/3d/sito3dmaking/photo_shot")
@dir_dest = dir_dest = File.expand_path("~/Sites/3dmaking/public/products_img")

Dir.glob("#{dir_src}/**").each do |file|
  basename = File.basename(file)
  dest = "#{dir_dest}/#{basename}"
  dest_thumbs = "#{dir_dest}_thumbs/#{basename}"


  convert file, dest
  thumbs  file, dest_thumbs
end
