

guard :rspec, cmd: 'chef exec rspec --color --format documentation', spec_paths: ['spec'], all_on_start: true do
  # watch changes to specs and run all tests
  watch(%r{^spec/.*_spec\.rb$}) do |spec_file|
    spec_file[0]
  end

  # watch spec helper file and run all tests
  watch('spec/spec_helper.rb') { 'spec' }

  # what changes to recipes and kick off the relevant rspec test
  watch(%r{recipes/(.+).rb$}) do |recipe_name|
    "spec/unit/recipes/#{recipe_name[1]}_spec.rb"
  end

  # what changes to recipes and kick off the relevant rspec test
  watch(%r{test/fixtures/cookbooks/(.*_test)/recipes/(.+).rb$}) do |regex|
    "spec/#{regex[1]}/#{regex[2]}_spec.rb"
  end

  # watch any other files, i.e. libraries, attributes, templates, etc and run all tests
  watch(%r{^attributes/(.+).rb$}) do
    'spec'
  end
  watch(%r{^libraries/(.+).rb$}) do
    'spec'
  end
  watch(%r{^resources/(.+).rb$}) do
    'spec'
  end
  watch(%r{^providers/(.+).rb$}) do
    'spec'
  end
end
