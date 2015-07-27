require 'erb'

erb_file = 'parallex_background.html.erb'
html_file = File.basename(erb_file, '.erb')

erb_str = File.read(erb_file)

renderer = ERB.new(erb_str)
result = renderer.result()

File.open(html_file, 'w') do |f|
  f.write(result)
end
