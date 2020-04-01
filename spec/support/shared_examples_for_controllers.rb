shared_examples "a protected staff controller" do |controller|
  let(:args) do {
    host: Rails.application.config.baukis2[:admin][:host],
    controller: controller
  }
  end

