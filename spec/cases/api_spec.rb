require 'spec_helper'
describe "Cartowrap::API" do
  before(:each) do
    @service = Cartowrap::API.new()
  end
  it "makes query requests" do
    expect(Cartowrap).to receive(:make_request).and_return(Cartowrap::HTTPService::Response.new(200, "", ""))
    @service.send_query('anything')
  end
  it "makes post query requests" do
    expect(Cartowrap).to receive(:make_request).and_return(Cartowrap::HTTPService::Response.new(200, "", ""))
    @service.post_query('anything')
  end
  it "gets synchronizations index" do
    expect(Cartowrap).to receive(:make_request).and_return(Cartowrap::HTTPService::Response.new(200, "", ""))
    @service.get_synchronizations
  end
  it "gets one synchronization" do
    expect(Cartowrap).to receive(:make_request).and_return(Cartowrap::HTTPService::Response.new(200, "", ""))
    @service.get_synchronization("import_id")
  end
  it "checks for synchronization status" do
    expect(Cartowrap).to receive(:make_request).and_return(Cartowrap::HTTPService::Response.new(200, "", ""))
    @service.check_synchronization("import_id")
  end
  it "forces a synchronization" do
    expect(Cartowrap).to receive(:make_request).and_return(Cartowrap::HTTPService::Response.new(200, "", ""))
    @service.force_synchronization("import_id")
  end
  it "creates a synchronization" do
    expect(Cartowrap).to receive(:make_request).and_return(Cartowrap::HTTPService::Response.new(200, "", ""))
    @service.create_synchronization("url", 900)
  end
  it "deletes a synchronization" do
    expect(Cartowrap).to receive(:make_request).and_return(Cartowrap::HTTPService::Response.new(200, "", ""))
    @service.delete_synchronization("import_id")
  end
end



describe "Cartowrap::API" do
  before(:each) do
    Cartowrap.config.dry_run = true
    @service = Cartowrap::API.new()
  end
  it "dry runs query requests" do
    expect(Cartowrap).to_not receive(:make_request)
    @service.send_query('anything')
  end
  it "dry runs synchronizations requests" do
    expect(Cartowrap).to_not receive(:make_request)
    @service.get_synchronizations
  end
  it "dry runs checks for synchronization status" do
    expect(Cartowrap).to_not receive(:make_request)
    @service.check_synchronization("import_id")
  end
  it "dry runs synchronization forces" do
    expect(Cartowrap).to_not receive(:make_request)
    @service.force_synchronization("import_id")
  end
  it "dry runs synchronization creates" do
    expect(Cartowrap).to_not receive(:make_request)
    @service.create_synchronization("url", 900)
  end
  it "dry runs synchronization delete" do
    expect(Cartowrap).to_not receive(:make_request)
    @service.delete_synchronization("import_id")
  end
end

