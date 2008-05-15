require 'rubygems'
require 'rake'
require 'rake/gempackagetask'

spec = eval(File.read("call_with_locals.gemspec"), binding, "call_with_locals.gemspec")

gemtask = Rake::GemPackageTask.new(spec) do |pkg|
  pkg.need_tar = true
end

desc 'Install call_with_locals'
task :install_gem => :gem do
  exec "gem", "install", "#{gemtask.package_dir}/#{gemtask.gem_file}"
end
