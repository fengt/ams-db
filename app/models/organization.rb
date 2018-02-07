class Organization < ApplicationRecord
  def self.sync_organization
    puts "organization sync starting at #{Time.now} ...."
    
    response = RestClient.get "#{Settings.pms_api_url}/v2/expresscompanys/organization", {accept: :json}
    data = JSON.parse(response.body, symbolize_names: true)[:data]
    data.each do |org|
      organizations = Organization.where(id: org[:id])
      if organizations.empty?
        Organization.new(id: org[:id], name: org[:name], parent_id: org[:parentId], level: org[:level], enabled: org[:enabled]).save
      elsif
        organizations.first.update(name: org[:name], parent_id: org[:parentId], level: org[:level], enabled: org[:enabled])
      end
    end
    
    puts "organization sync finished at #{Time.now}"
  end
end
