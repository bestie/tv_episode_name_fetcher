def output
  @output ||= StringIO.new
end

def output_should_contain(text)
  output.string.should include(text)
end

def dir
  "/tmp/tv_episode_name_fetcher"
end

Then /^I should see "([^\"]*)"$/ do |text|
  output_should_contain text
end

When /^I enter "([^\"]*)"$/ do |arg1|
  pending
end

Given /^I have some files to rename$/ do
  system "mkdir #{dir}"
  TvRenamer.file_names.heroes.each do |file_name|
    file_path = File.join(dir, file_name.unprocessed)
    system "touch #{file_path}"
    File.exists?(file_path).should be_true
  end
end

When /^I start the programme with "([^\"]*)"$/ do |args|
  args = Shellwords.shellwords(args)
  args.unshift(dir)
  @cli = TvRenamer::CLI.new(output, args)
end

Then /^I should see a list of file name suggestions$/ do
  TvRenamer.file_names.heroes.each do |file_name|
    Then %Q{I should see "#{file_name.unprocessed} -> #{file_name.processed}"}
  end
end

Then /^I the files should be renamed$/ do
  TvRenamer.file_names.heroes.each do |file_name|
    Dir[dir].should include(file_name.processed)
    Dir[dir].should_not include(file_name.processed)
  end
end
