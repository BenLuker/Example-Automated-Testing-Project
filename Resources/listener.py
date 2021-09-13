from subprocess import *
import testrailIntegration

class listener:
    ROBOT_LISTENER_API_VERSION = 3

    def __init__(self):
        self.client = testrailIntegration.GetClient()
        self.results = {}

    def start_suite(self, data, result):
        self.results.clear()

    def end_test(self, data, result):
        self.results[data.name] = result

    def end_suite(self, data, result):
        testrailIntegration.UpdateSuiteWithResults(data.name, self.results)