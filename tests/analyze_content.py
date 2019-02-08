import json
import sys
import os.path

def check_file (filepath, message):
    global exit_code
    if not os.path.exists(filepath):
        print(message % (filepath))
        exit_code = 4

if len(sys.argv) < 2:
    print 'Usage: \npython analyze_content.py {language_id}'
    sys.exit(1)

language_id = sys.argv[1]
templates_path = 'languages/'+language_id+'/templates'
examples_path = 'languages/'+language_id+'/examples'
content = None

try:
    with open('languages/'+language_id+'/content.json') as f:
        content = json.load(f)
except IOError:
    sys.exit(2)

if not content:
    sys.exit(3)

exit_code = 0

for template in content['templates']:
    filepath = templates_path + '/' + template['file_source']
    check_file(filepath, 'Template file not found: %s')

for example in content['examples']:
    
    if isinstance(example['file_source'], dict):
        for filesource in example['file_source']:
            filepath = examples_path + '/' + example['file_source'][filesource]
            check_file(filepath, 'Example file not found: %s')
    else:
        filepath = examples_path + '/' + example['file_source']
        check_file(filepath, 'Example file not found: %s')

    filepath = examples_path + '/' + example['file_input']
    check_file(filepath, 'Example file not found: %s')

sys.exit(exit_code)

