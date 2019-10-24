# use basic tests
describe package("tomcat8") do
  it { should be_installed }
end

# extend tests with metadata
control "01" do
  impact 0.7
  title "Verify tomcat8 service"
  desc "Ensures nginx service is up and running"
  describe service("nginx") do
    it { should be_enabled }
    it { should be_installed }
    it { should be_running }
  end
end