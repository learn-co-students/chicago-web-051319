class App
  def call(environment_hash)
    environment_hash
    req = Rack::Request.new(environment_hash)
    path = req.path
    status_code = 200
    header = {}

    if path == "/"
      body = ['hello world'] # or {}
    elsif path == "/dogs/faves"
      body = ['MY FAVORITE DOGS: \n NEWFOUNDLAND \n POODLE']
    else
      body = ['"Fore oh Fore" shouted the exuberant golfer']
    end
    return [status_code, header, body]
  end
end
