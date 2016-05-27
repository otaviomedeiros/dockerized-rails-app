json.array!(@code_snippets) do |code_snippet|
  json.extract! code_snippet, :id, :description, :code
  json.url code_snippet_url(code_snippet, format: :json)
end
