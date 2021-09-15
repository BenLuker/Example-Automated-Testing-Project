from subprocess import *
import testrailIntegration
from robot.libraries.BuiltIn import BuiltIn

class listener:
    ROBOT_LISTENER_API_VERSION = 3

    def __init__(self, observerUser=None, observerPass=None, testrailUser=None, testrailKey=None, run=None, headless=True):
        self.observerUser = observerUser
        self.observerPass = observerPass
        self.client = testrailIntegration.GetClient(testrailUser, testrailKey)
        self.run = run
        self.headless=headless
        self.results = {}

    def start_suite(self, data, result):
        BuiltIn().set_suite_variable("${Observer-User}", self.observerUser)
        BuiltIn().set_suite_variable("${Observer-Password}", self.observerPass)
        BuiltIn().set_suite_variable("${headless}", self.headless)
        self.results.clear()

    def end_test(self, data, result):
        self.results[data.name] = result

    def end_suite(self, data, result):
        testrailIntegration.UpdateSuiteWithResults(self.client, self.run, data.name, self.results)