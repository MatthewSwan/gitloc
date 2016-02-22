require 'open3' # we'll use this to invoke the binary

RSpec.describe 'gitloc binary' do
  let(:binpath)  { File.expand_path '../../bin/gitloc', __FILE__ }
  let(:repopath) { File.expand_path '../..',            __FILE__ }

  it 'takes a git repository and tells me how many lines of code are in each file' do
    stdout, stderr, exitstatus = Open3.capture3(binpath, repopath)
    expect(stdout).to match /2.*?test\/fixtures\/2loc/
    expect(exitstatus).to be_success
  end
end

 # we can run the program and get its stdout and stderr
 stdout, stderr, exitstatus = Open3.capture3 'ruby', '-e', '
   $stdout.puts "hello"
     $stderr.puts "goodbye"
     '
     stdout     # => "hello\n"
     stderr     # => "goodbye\n"
     exitstatus # => #<Process::Status: pid 11855 exit 0>

     # an exit status of 0 means it succeeded
     stdout, stderr, exitstatus = Open3.capture3 'ruby', '-e', 'exit 0'
     exitstatus.exitstatus # => 0
     exitstatus.success?   # => true

     # an exit status of nonzero means it failed
     stdout, stderr, exitstatus = Open3.capture3 'ruby', '-e', 'exit 12'
     exitstatus.exitstatus # => 12
     exitstatus.success?   # => false
