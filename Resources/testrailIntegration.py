from testrail import *
import logging

domain = 'https://benluker.testrail.com/'
user =  'thebenluker@gmail.com'
key = 'a5U./XZpQi5lOldK4HfM-gisd/oHdoN2XREmjcMMH'
project = '2'
run = '19'

# Define a function
def GetClient():
    client = APIClient(domain)
    client.user = user
    client.password = key
    return client    

def ConvertStatus(b):
    return 1 if b else 5

def UpdateSuiteWithResults(name, r):

    # Get valid client
    client = GetClient()
    
    # Get matching suite
    suite = next((s for s in (client.send_get('get_sections/' + str(project))) if s['name'] == name), None)

    # Only proceed if suite was found
    if not suite:
        logging.warning("Could not find suite with the title: " + name + ". Results will not be updated.\n")
    
    else:
        print("Uploading Results to Testrail...\n")

        # Get all cases in suite
        cases = client.send_get('get_cases/' + str(project) + '&section_id=' + str(suite['id']))

        # Get all case_ids in run
        caseIDs = [t['case_id'] for t in client.send_get('get_tests/' + str(run))]

        # For every case from a suite, if its id matches the case_id from the suite, and its title matches a robot framework test name, add it to the final results 
        results = [{'case_id': c['id'], 'status_id': ConvertStatus(r[c['title']].passed), 'comment': r[c['title']].message } for c in cases if c['id'] in caseIDs and c['title'] in r]
        
        # Upload results
        client.send_post('add_results_for_cases/' + str(run), { 'results': results })

