class RakutenRecipeApi
  include HTTParty
  base_uri 'http://app.rakuten.co.jp'
  API_VERSION = '20170426'
  APPLICATION_ID = '1051268512031928332'

# sample
# url = 'http://localhost:3000/internal/v1/users/partner_organizations'
# params = {application_token: 'honya', user_id: [24, 13, 14]}
# method = :get
# a = JSON.parse(HTTParty.send(method, url, { body: params }).body)

# uri
# https://app.rakuten.co.jp/services/api/Recipe/CategoryRanking/20170426?
#         applicationId=[アプリID]&
#         categoryId=10
  def self.get_recipes
    query = {applicationId: APPLICATION_ID, categoryId: 10}
    res = get("/services/api/Recipe/CategoryRanking/" + API_VERSION, query)

    #     merged_query = default_query.merge!(query)
    # res = get("/master/AreaSearchAPI/20150630", query: merged_query)
    # data_list = JSON.parse(res.body)["area"] || []
    # data_list.map(&:with_indifferent_access)

  end

end
