def retrieve_mode
  begin
    system_environment = ENV.fetch('SYSTEM_MODE')
  rescue
    system_environment = nil
  end
  return system_environment
end

def retrieve_port
  '8100'
end

def retrieve_travis
  File.exist?('travis.ci')
end
