module Hopper
  class Bundler < Probe
    exposes :gemfile_present, :gemfile_lock_present

    # The description.
    #
    # Returns a String.
    def description
      "Bundler. So hot right now."
    end

    # Is a Gemfile present in this project?
    #
    # Returns a binary integer.
    def gemfile_present
      numeric_binary Dir.glob("#{project.path}/Gemfile")
    end

    # Is a Gemfile present in this project?
    #
    # Returns a binary integer.
    def gemfile_lock_present
      numeric_binary Dir.glob("#{project.path}/Gemfile.lock")
    end
  end
end