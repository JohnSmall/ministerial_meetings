
# lib/rails/test_unit/sub_test_task.rb
# required because Draper causes all rake tasks to fail in Rails 5 if this isn't present.
class Rails::SubTestTask < Rake::TestTask
end
