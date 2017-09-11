Pod::Spec.new do |s|

  s.name         = "ADProgressView"
  s.version      = "1.2.0"
  s.summary      = "A UIProgressView subclass allowing start/pause/continue/reset."

  s.description  = "I created this subclass after discovering that UIProgressView does not allow you to pause/continue its progression. Thanks to ADProgressView, you can now start/pause/continue/reset your progress view. A Timer instance is used to control the progression. You can also customize the time interval between each update, and of course the total duration."
  s.homepage     = "https://github.com/adauguet/ADProgressView.git"

  s.license      = "MIT"

  s.author             = { "Antoine DAUGUET" => "dauguet.antoine@gmail.com" }

  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/adauguet/ADProgressView.git", :tag => s.version }

  s.source_files  = "ADProgressView", "ADProgressView/**/*.{h,m,swift}"
  s.exclude_files = "Example"

end
