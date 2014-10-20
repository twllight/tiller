require 'json'
require 'tiller/api/handlers/404'

def handle_globals(api_version, tiller_api_hash)
  case api_version
    when 'v1'
      {
          :content => tiller_api_hash['global_values'].to_json,
          :status => '200 OK'
      }
    else
      handle_404
  end
end