module Nesta
  module Plugin
    module Smartmeta
    end
  end

  class FileModel
    def description
      metadata('description') || metadata('summary') 
    end
    def keywords
      metadata('keywords') || generated_keywords
    end

    private
    def generated_keywords
      keywords = ""
      keywords << keywords_from_pages(categories)
      keywords << keywords_from_pages(articles)
      (keywords.empty? ? nil : keywords)
    end

    def keywords_from_pages(pages)
      unless pages.empty?
        return pages.map do |page|
                 page.filename.split("/").last.split(".").first
               end.map do |page|
                 page.split("-").join(" ")
               end.join(", ")
      end
      return ""
    end
  end
end
