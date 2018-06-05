require 'selenium-webdriver'
class SiteElement

  def initialize(url)
    @driver=Selenium::WebDriver.for :firefox
    @driver.manage.window.maximize
    @driver.navigate.to url
    @wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
  end

  def login_username()
    @driver.find_element(:id,'login_login_username')
  end

  def login_password()
    @driver.find_element(:id,'login_login_password')
  end

  def submit_button()
    @driver.find_element(:id,'login_submit')
  end

  def logout_link()
    @driver.find_element(:link_text,'Logout')
  end

  def close_browser()
    @driver.quit
  end

  def chevron_down_button()
    @driver.find_element(:css, "button.user-toggle.navbar-toggle > span.icon.icon-chevron-down.collapsed")
  end

end