# Be sure to restart your server when you modify this file.

# You can add backtrace silencers for libraries that you're using but don't wish to see in your backtraces.
# Rails.backtrace_cleaner.add_silencer { |line| line =~ /my_noisy_library/ }

# You can also remove all the silencers if you're trying to debug a problem that might stem from framework code.
# Rails.backtrace_cleaner.remove_silencers!

# added by me acc'ding to Rails Tutorial:
Rails.backtrace_cleaner.add_silencer { |line| line =~ /rvm/ }

# Explanation from Rails Tutorial:
# Upon encountering an error or failing test, the test runner shows a “stack trace” or “backtrace” that traces the course of a failed test through the application. While this backtrace is usually very useful for tracking down the problem, on some systems (including the cloud IDE) it goes past the application code and into the various gem dependencies, including Rails itself. The resulting backtrace is often inconveniently long, especially since the source of the problem is usually the application and not one of its dependencies.
# The solution is to filter the backtrace to eliminate unwanted lines. This requires the mini_backtrace gem included in Listing 3.2, combined with a backtrace silencer. On the cloud IDE, most unwanted lines contain the string rvm (referring to the Ruby Version Manager), so I recommend using the silencer shown in Listing 3.41 to filter them out.