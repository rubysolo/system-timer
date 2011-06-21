# Copyright 2008 David Vollbracht & Philippe Hanrigou

if defined?(RUBY_DESCRIPTION) &&
   RUBY_DESCRIPTION =~ /^ruby 1.8/ &&
   RUBY_DESCRIPTION !~ /enterprise/i
then
  # this is MRI
  require File.expand_path('../system_timer_implementation', __FILE__)
else
  # load the Timeout stub
  require File.expand_path('../system_timer_stub', __FILE__)
end
