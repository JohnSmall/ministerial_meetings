module GoogleNlpApi
  extend ActiveSupport::Concern


  def extract_entities(text)
    document = {document: {
               type: 'PLAIN_TEXT',
               language: 'en',
               content: text
              },
              encodingType: 'UTF8'
    }
    conn = Faraday.new Rails.application.secrets.google_nlp_host
    response = conn.post do | req |
      req.url  "/v1beta1/documents:analyzeEntities"
      req.params['key'] = Rails.application.secrets.google_nlp_api_key
      ap document
      req.body = document.to_json
    end
    response.body
  end
end
