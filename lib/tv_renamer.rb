$LOAD_PATH << File.join(File.dirname(__FILE__),"tv_renamer")
# $LOAD_PATH << File.join(File.dirname(__FILE__),"support")
Dir["#{File.dirname(__FILE__)}/tv_renamer/**/*.rb"].each {|f| require f}
# Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}