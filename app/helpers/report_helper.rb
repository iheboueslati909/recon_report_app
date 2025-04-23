module ReportHelper
  def risk_level_class(level)
    case level&.downcase
    when 'high' then 'risk-high'
    when 'medium' then 'risk-medium'
    when 'low' then 'risk-low'
    else 'text-muted'
    end
  end

  def vuln_severity_class(severity)
    case severity&.downcase
    when 'critical' then 'text-danger'
    when 'high' then 'risk-high'
    when 'medium' then 'risk-medium'
    else 'text-muted'
    end
  end
end
