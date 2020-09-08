# class WebDriverManager(object):
# 
#     __driver = None
# 
#     @classmethod
#     def get_web_driver(cls, browser):
#         if cls.__driver is None:
#             if (browser.lower()) == "chrome":
#                 cls.__driver =  webdriver.Chrome("C:/drivers/chromedriver.exe")
# 
#         return cls.__driver
    
# from webdriver_manager import chrome
# from webdriver_manager import firefox

# from webdrivermanager import ChromeDriverManager
# cdm=    ChromeDriverManager()
# cdm.download_and_install()

from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from builtins import print
def chromeDriver():
    driver1 = webdriver.Chrome(ChromeDriverManager().install())
    return driver1
    


# from selenium import webdriver
# from webdriver_manager.chrome import ChromeDriverManager
# def get_chromedriver_path():
#     driver_path = ChromeDriverManager().install()
#     print(driver_path)
#     return  driver_path

# from selenium import webdriver
# 
# # chrome driver
# from webdriver_manager.chrome import ChromeDriverManager
# driver = webdriver.Chrome(ChromeDriverManager().install())
# 
# # firefox driver
# from webdriver_manager.firefox import GeckoDriverManager
# driver = webdriver.Firefox(GeckoDriverManager.install())