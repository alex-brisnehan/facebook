require 'rdoc/task'

Rake::RDocTask.new do |rdoc|
	rdoc.rdoc_files.include('README')
	rdoc.rdoc_files.include('app/*/*.rb')
	rdoc.main = "README"
	rdoc.title = "Facebook Documentation"
	rdoc.rdoc_dir = 'rdoc'
end

