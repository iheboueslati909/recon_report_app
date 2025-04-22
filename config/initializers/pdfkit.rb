require 'pdfkit'

PDFKit.configure do |config|
    config.wkhtmltopdf = '/usr/bin/wkhtmltopdf'  # Confirm this with `which wkhtmltopdf`
    config.default_options = {
      page_size: 'A4',
      print_media_type: true,
      encoding: 'UTF-8',
      margin_top: '0.75in',
      margin_right: '0.75in',
      margin_bottom: '0.75in',
      margin_left: '0.75in'
    }
  end
  
  Rails.application.config.middleware.use PDFKit::Middleware, {}, only: '/report'
  