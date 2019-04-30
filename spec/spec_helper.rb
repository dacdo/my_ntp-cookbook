
# Do not change

require 'chefspec'
require 'chefspec/berkshelf'

current_dir = File.dirname(__FILE__)

# load a custom spec helper that is included in all recipe specs, if it exists
# This allows testing code to be shared across multiple spec files
# e.g. shared context, shared examples, etc
require 'custom_spec_helper' if File.file?(File.join(current_dir, 'custom_spec_helper.rb'))

# Put the support directory in the $LOAD_PATH
# This allows you to require files, which can be used for mocking/stubbing classes and modules
support_path = File.join(current_dir, 'support')
$LOAD_PATH.unshift(support_path) if File.directory?(support_path)
