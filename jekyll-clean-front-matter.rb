#! /usr/bin/env ruby

require 'yaml'

ARGV.each { |jekyll|
  puts "processing #{jekyll}"
  fh = File.open(jekyll, 'r')
  contents = fh.read
  fh.close
  if (md = contents.match(/^(?<metadata>---\s*\n.*?\n?)^(---\s*$\n?)/m))
    post = md.post_match
    metadata_yaml = md[:metadata].gsub(/excerpt:.*/, 'excerpt:')
    metadata = YAML.load(metadata_yaml)
  else
    next
  end
  ["categories", "status", "date", "type", "meta", "author", "excerpt"].each { |k| metadata.delete(k) }
  out_fh = File.open("#{jekyll}.clean-md", 'w')
  out_fh.print(metadata.to_yaml)
  out_fh.print("---\n\n")
  out_fh.print(post)
  out_fh.close
}
exit 0
