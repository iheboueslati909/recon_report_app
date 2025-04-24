class ReportsController < ApplicationController
  def show
    @report_data = JSON.parse(File.read(Rails.root.join("data", "sample_data.json")), symbolize_names: true)

    respond_to do |format|
      format.html do
        @is_pdf = false
      end
      format.pdf do
        @is_pdf = true
        render pdf: "recon-report",
               template: "reports/show.html.erb",
               layout: "pdf"
      end
    end
  end
end
