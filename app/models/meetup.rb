class Meetup
  include HTTParty
  base_uri 'api.meetup.com'

  def initialize
    api_key = '693b437944155b4d111f7057356a506a'
    @options = {
      query: {
        key: '693b437944155b4d111f7057356a506a',
        sign: "true",
        desc: "true",
        page: 10
      }
    }
  end

  def get_data
    self.class.get('/ocruby/events/', @options)
  end

  def events
    if get_data.code.to_i == 200
      get_data.parsed_response
    else
      raise "Error fetching data from Meetup"
    end
  end
end
