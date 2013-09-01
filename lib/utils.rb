module Utils
  def urlify(name)
    name.downcase.gsub(/\(|\)/, " ").strip.gsub(/\s+/, "_")
  end
end