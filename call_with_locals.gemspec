Gem::Specification.new do |s|
  s.name = "call_with_locals"
  s.version = "0.1"

  s.specification_version = 2 if s.respond_to? :specification_version=

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version
  s.authors = ["Kevin Ballard"]
  s.date = "2008-05-14"
  s.description = "Call a Proc with new locals"
  s.email = "kevin@sb.org"
  s.extra_rdoc_files = ["LICENSE", "README"]
  s.files = ["lib/call_with_locals.rb", "LICENSE", "README", "call_with_locals.gemspec",
             "test/call_with_locals_spec.rb","test/spec_helper.rb"]
  s.has_rdoc = true
  s.homepage = "http://github.com/kballard/call_with_locals"
  s.rubygems_version = "1.1.1"
  s.summary = s.description
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "call_with_locals", "--main", "README"]
end
