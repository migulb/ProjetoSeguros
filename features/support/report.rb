require "report_builder"
require "date"

def criar_report
    at_exit do 
        @infos = {
          "device" => "Android",
          "environment" => "Dev",
          "Data do Teste" => DateTime.now.to_s
        }
        ReportBuilder.configure do |config| 
      config.input_path = "log/report.json"
      config.report_path = "log/report"
      config.report_types = [:html]
      config.report_title = "Projeto Seguro"
      config.additional_info = @infos
      config.color = "indigo"
    end
    ReportBuilder.build_report
  end
    
end
