from selenium import webdriver

# chrome driver
from webdriver_manager.chrome import ChromeDriverManager
driver = webdriver.Chrome(ChromeDriverManager().install())

# firefox driver
from webdriver_manager.firefox import GeckoDriverManager
driver = webdriver.Firefox(GeckoDriverManager.install())