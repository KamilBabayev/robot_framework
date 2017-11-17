#!/bin/sh

echo "from .json_writer import create_json_output" >> /usr/lib/python2.7/site-packages/robot/writer/__init__.py
echo "from .json_writer import write_json_todb" >> /usr/lib/python2.7/site-packages/robot/writer/__init__.py
sed -i "46i from robot.writer import create_json_output, write_json_todb" /usr/lib/python2.7/site-packages/robot/run.py
sed -i "453i \               \ xml_file, json_file = settings.output, settings.output_directory + '/output.json'" \
         /usr/lib/python2.7/site-packages/robot/run.py
sed -i "454i \               \ create_json_output(xml_file, json_file)" /usr/lib/python2.7/site-packages/robot/run.py
sed -i "455i \               \ write_json_todb(json_file)" /usr/lib/python2.7/site-packages/robot/run.py

