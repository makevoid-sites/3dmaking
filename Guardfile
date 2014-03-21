guard :sass, input: "sass", output: "public/css"

guard :livereload do
  watch %r{views/.+\.haml}
  watch %r{public/css/main\.css}
  watch %r{db/products.rb}
end

guard :coffeescript, input: "coffee", output: "public/js"

# guard :haml, input: ".", output: [".", "en"] do
#   watch %r{.+\.haml}
# end