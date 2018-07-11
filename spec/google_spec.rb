require "selenium-webdriver"

describe "Google" do
  let(:driver) { Selenium::WebDriver.for :remote, url: "http://localhost:4444/wd/hub", desired_capabilities: :firefox }
  describe "検索" do
    it "タイトルが正しいこと" do
      driver.navigate.to "https://google.co.jp"

      element = driver.find_element(name: 'q')
      element.send_keys "Hello WebDriver!"
      element.submit
      sleep 5

      driver.save_screenshot "./tmp/google.png"

      expect(driver.title).to eq "Hello WebDriver! - Google 検索"

      driver.quit
    end

    it "qに検索語が復元されていること" do
      driver.navigate.to "https://google.co.jp"

      element = driver.find_element(name: 'q')
      element.send_keys "Hello WebDriver!"
      element.submit

      element = driver.find_element(name: 'q')

      expect(element.attribute("value")).to eq "Hello WebDriver!"

      driver.quit
    end
  end
end
