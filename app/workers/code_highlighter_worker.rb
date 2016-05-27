require 'rest-client'

class CodeHighlighterWorker

  include Sidekiq::Worker

  CODE_HIGHLIGHTER_URL = 'http://markup.su/api/highlighter'

  def perform(snippet_id)
    snippet = CodeSnippet.find(snippet_id)
    response = RestClient.get(CODE_HIGHLIGHTER_URL, {params: {language: 'Ruby', theme: 'Sunburst', source: snippet.code}})

    snippet.update_attributes(code: response.body)
  end

end
