module TvRenamer
  class CLI
    def initialize(stdout, args)
      stdout.puts "Fetching episode names for 'Heroes' Season 3"      
      
      opts = OptionParser.new do |opts|
        opts.on( '--show [SHOW]', 'Name of the show' ) do |show|
          @show = show
        end
        opts.on( '--season [SEASON]', Float, 'Season number' ) do |season|
          @season = season.to_i
        end
        opts.on( '-h', '--help', 'Display this screen' ) do
          display opts
        end
      end
      
      opts.parse!(args)

    end
  end
end