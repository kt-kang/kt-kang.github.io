require "jekyll-remote-theme/theme"

module Jekyll
  module RemoteTheme
    class Theme
      unless instance_methods.include?(:configure_sass)
        define_method(:configure_sass) do
          # no-op
        end
      end
    end
  end
end
