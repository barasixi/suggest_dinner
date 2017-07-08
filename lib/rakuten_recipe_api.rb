class RakutenRecipeApi
  include HTTParty
  base_uri 'https://app.rakuten.co.jp'
  # TODO save env
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

  # 4つしかとれないしょっぱいrecipeをDBにキャッシュしてまう
  def self.cache_recipes
    RakutenRecipe.destroy_all

    meet_categories = ["10", "31", "41", "43"]
    meet_categories.each do |category| 
      recipes = RakutenRecipeApi.get_recipes(query: {categoryId: category})
      p "debug:#{recipes.count}"
      recipes.each{|r| 
        r.meet!
        r.save!
      }      # 連続リクできん
      sleep 1
    end

    fish_categories = [11, 32, 17, 23]
    fish_categories.each do |category| 
      recipes = RakutenRecipeApi.get_recipes(query: {categoryId: category})
      p "debug:#{recipes.count}"
      recipes.each{|r| 
        r.fish!
        r.save!
      }
      # 連続リクできん
      sleep 1
    end

    vegetable_categories = [18, 12]
    vegetable_categories.each do |category| 
      recipes = RakutenRecipeApi.get_recipes(query: {categoryId: category})
      p "debug:#{recipes.count}"
      recipes.each{|r| 
        r.vegetable!
        r.save!
      }
      # 連続リクできん
      sleep 1
    end
    
  end


  def self.get_recipes(query: {})
    merged_query = default_query.merge!(query)
    merged_query.merge!(categoryId: 10) if merged_query[:categoryId].blank?

    res = get("/services/api/Recipe/CategoryRanking/20170426", query: merged_query)
    data_list = JSON.parse(res.body)["result"] || []
    data_list.map do |data|
      RakutenRecipe.build_from_api(data)
    end
  end

  def self.get_large_category_list
    query = {applicationId: APPLICATION_ID, categoryType: "large"}
    res = get("/services/api/Recipe/CategoryList/20170426", query: query)
    data_list = JSON.parse(res.body)["result"] || []
    p data_list
    # data_list.map do |data|
    #   RakutenRecipeCategory.build_from_api(data)
    # end
  end

  def self.get_medium_category_list
    query = {applicationId: APPLICATION_ID, categoryType: "medium"}
    res = get("/services/api/Recipe/CategoryList/20170426", query: query)
    data_list = JSON.parse(res.body)["result"] || []
    p data_list
    # data_list.map do |data|
    #   RakutenRecipeCategory.build_from_api(data)
    # end
  end

  def self.get_small_category_list
    query = {applicationId: APPLICATION_ID, categoryType: "small"}
    res = get("/services/api/Recipe/CategoryList/20170426", query: query)
    data_list = JSON.parse(res.body)["result"] || []
    p data_list
    # data_list.map do |data|
    #   RakutenRecipeCategory.build_from_api(data)
    # end
  end


  private

  def self.default_query
    { applicationId: APPLICATION_ID, format: "json" }
  end
end
