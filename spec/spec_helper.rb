Dir["#{File.dirname(__FILE__)}/../lib/**/*.rb"].each {|f| require f}
# Dir["#{File.dirname(__FILE__)}/support/*.rb"].each {|f| require f}

Spec::Runner.configure do |config|
end

module TvRenamer
  
  class << self
    def file_names
      heroes_unprocessed = [
        "Heroes.S03E01.HDTV.XviD-LOL.avi",
        "heroes.318.hdtv-icanhasproper.avi",
        "heroes.s03e22.repack.hdtv.xvid-0tv.avi",
        "Heroes.S03E25.720p.HDTV.X264-DIMENSION.mkv"
      ]
      
      heroes_processed = [
        "Heroes.s03e01.(Volume Three: Villains) The Second Coming.avi",
        "Heroes.s03e18.Exposed.avi",
        "Heroes.s03e22.Turn and Face the Strange.avi",
        "Heroes.s03e25.An Invisible Thread.mkv"
      ]
      
      heroes = []
      heroes_unprocessed.each_with_index do |name,i|
        heroes << OpenStruct.new( :unprocessed => heroes_unprocessed[i], 
                                  :processed => heroes_processed[i])
      end
      
      OpenStruct.new :heroes => heroes
    end
  end
    
end