class Application
  def call(env)
    resp = Rack::Response.new
    current_time = Time.now.strftime('%H:%M')
    compare_time = '12:00'
    if current_time < compare_time
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
