require "find"

module Jekyll
	Hooks.register :site, :post_write do |site|
		root_dir = "#{site.source}/_root"

		Find.find("#{root_dir}").select do |filename|
			filename = filename.gsub("#{root_dir}/", "")
			path     = "#{root_dir}/#{filename}"

			if File.file?("#{path}")
				# There doesn't seem to be a native Jekyll method to copy + flatten a subfolder :|
				# This means we need to do it manually.

				# We can't use StaticFile as it keeps the subfolder used, but we need it for modify times
				sFile = Jekyll::StaticFile.new(site, site.source, "_root", filename)

				dest_path = "#{site.config['destination']}/#{filename}"

				FileUtils.mkdir_p(File.dirname(dest_path))
				FileUtils.rm(dest_path) if File.exist?(dest_path)

				# https://github.com/jekyll/jekyll/blob/22a974200d21a5476e92ee9e33312c583f001271/lib/jekyll/static_file.rb#L192
				if @site.safe || Jekyll.env == "production"
					FileUtils.cp(path, dest_path)
				else
					FileUtils.copy_entry(path, dest_path)
				end

				unless File.symlink?(dest_path)
					File.utime(sFile.class.mtimes[path], sFile.class.mtimes[path], dest_path)
				end
			end
		end
	end
end
