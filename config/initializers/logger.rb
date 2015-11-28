class Logger
  def format_message(severity, timestamp, progamname, msg)
    time = humanize(timestamp)
    "#{time} (#{$$}) : #{msg}\n"
  end
end

def humanize(timestamp)
  timestamp.strftime("%d-%m-%Y, %H:%M")
end