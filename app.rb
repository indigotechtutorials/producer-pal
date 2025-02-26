include Glimmer

shell {
  grid_layout {
    num_columns 1
    make_columns_equal_width false
    margin_width 50
    margin_height 25
    horizontal_spacing 0
  }

  minimum_size 475, 500
  text "Producerpal"

  label {
    text "Hey producers!"
    font height: 26, style: :bold
  }

  label {
    text 'Enter youtube video url'
  }

  @youtube_url = text { # includes :border style by default
    layout_data :fill, :center, true, false
    #text <=> [self, :default]
  }

  @downloading = false

  button {
    text "Download"
    
    on_widget_selected do
      # Do something
      if  @downloading
        return puts "Already downloading a video pls wait..."
      end

      if @youtube_url.text.chars.count > 0
        @downloading = true
        puts "Downloading video #{@youtube_url.text}"
        `yt-dlp "#{@youtube_url.text}" -x --audio-format=mp3 -o "/Users/indigo/Documents/Glimmer-Apps/producer-pal/downloads/%(title)s.%(ext)s"`
        @downloading = false
        puts "Finished downloading the video"
      else
        puts "No youtube video url was passed"
      end
    end
  }
  
}.open