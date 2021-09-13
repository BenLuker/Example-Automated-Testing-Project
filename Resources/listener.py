from subprocess import *
import testrailIntegration
from robot.libraries.BuiltIn import BuiltIn

class listener:
    ROBOT_LISTENER_API_VERSION = 3

    def __init__(self, user=None, key=None, run=None, headless=False):
        self.client = testrailIntegration.GetClient(user, key)
        self.run = run
        self.headless=headless
        self.results = {}

    def start_suite(self, data, result):
        BuiltIn().set_suite_variable("${headless}", self.headless)
        self.results.clear()

    def end_test(self, data, result):
        self.results[data.name] = result

    def end_suite(self, data, result):
        testrailIntegration.UpdateSuiteWithResults(self.client, self.run, data.name, self.results)