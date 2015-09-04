# DocPad Configuration File
# http://docpad.org/docs/config

# Define the DocPad Configuration
docpadConfig = {
  collections:
    pages: ->
      @getCollection("html").findAllLive({isPage:true}).on "add", (model) ->
        model.setMetaDefaults({layout:"default"})
  templateData:
    site:
      title: "My Website"
    getPreparedTitle: -> if @document.title then "#{@document.title} | #{@site.title}" else @site.title
    headerTitles: ["Welcome", "Our House", "Rush!", "Life at ADPhi", "Meet the Brothers"]
    headerLinks: ["welcome.html", "house/location.html", "rush/overview.html", "life/culture.html", "brothers/all.html"]
}

# Export the DocPad Configuration
module.exports = docpadConfig
