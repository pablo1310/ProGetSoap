require 'savon'
require 'pp'
#require 'nokogiri'

require 'ostruct'
require 'json'

# def client
#     client = Savon.client(wsdl: "http://localhost:8624/api/soap?wsdl")
# end

def client
    client = Savon.client(
        :wsdl => "http://localhost:8624/api/soap?wsdl",
        :pretty_print_xml => true
    )
end




data = {
    'API_Key' => "BztRw5NIuy5vHqle9ngc"
}


     response = client.call(:feeds_get_feeds, message: data)
    #client.operations

    #pp response.success?

    #pp response.hash

    #pp response.body[:feeds_get_feeds_response][:feeds_get_feeds_result][:schema][:document_element]#[:element]#[:complex_type]#[:choice][:element][:complex_type][:sequence]

    #pp response.body[:feeds_get_feeds_response][:feeds_get_feeds_result][:diffgram][:document_element][:feeds]#[:schema][:document_element]
    
    # soap_xml = response.to_xml

    # p soap_xml.search('feeds').text

    #res = Nokogiri.XML(response.to_xml)

    # p res.search("Feed_Id")
    # p res.search("Feed_Name").text

    #p res.xpath("//Feeds")
    
    res = response.body
    obj = JSON.parse(res.to_json, object_class: OpenStruct)
    
    p obj.feeds_get_feeds_response.feeds_get_feeds_result



    #pp response.body

    #pp response.to_xml
    # {:schema=>
    #     {:element=>
    #       {:complex_type=>
    #         {:choice=>
    #           {:element=>
    #             {:complex_type=>
    #               {:sequence=>
    #                 {:element=>
    #    {:document_element=>
    #     {:feeds=>
    #       [{:feed_id=>"1",
    #         :feed_name=>"Default-NuGet",