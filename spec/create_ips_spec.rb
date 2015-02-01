require 'tmpdir'
require 'shellwords'

describe 'a generated IPS file' do
  it 'can be applied to a binary successfully' do
    script = File.expand_path("../../bin/create-ips", __FILE__)
    apply_script = File.expand_path("../../bin/apply-ips", __FILE__)

    in_tmp_dir do
      File.write('original_binary', "abcdefg")
      File.write('patched_binary',  "abbbbfh")

      cmd = "#{Shellwords.escape(script)} original_binary patched_binary > ips"
      `#{cmd}`

      expect(File.size('ips') > 0).to be

      cmd = "#{Shellwords.escape(apply_script)} -f original_binary ips"
      `#{cmd}`

      expect(File.read('original_binary')).to eq(File.read('patched_binary'))

    end
  end

  def in_tmp_dir(&block)
    Dir.mktmpdir do |dir|
      Dir.chdir(dir, &block)
    end
  end
end
