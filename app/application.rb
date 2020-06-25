class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now

    if t.strftime('%P') == 'pm'
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
