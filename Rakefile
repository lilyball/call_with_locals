require 'rubygems'
require 'rake'
require 'rake/gempackagetask'
require 'spec'
require 'spec/rake/spectask'

spec = eval(File.read("call_with_locals.gemspec"), binding, "call_with_locals.gemspec")

gemtask = Rake::GemPackageTask.new(spec) do |pkg|
  pkg.need_tar = true
end

Spec::Rake::SpecTask.new do |t|
  t.warning = true
  t.spec_opts = ["-c"]
end

desc 'Install call_with_locals'
task :install_gem => :gem do
  exec "gem", "install", "#{gemtask.package_dir}/#{gemtask.gem_file}"
end
