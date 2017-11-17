FROM juniper/pyez:latest
COPY test /test
ADD run_py_modify.sh /
ADD json_writer.py /usr/lib/python2.7/site-packages/robot/writer/
RUN pip install -U robotframework robotframework-selenium2library xmltodict pymongo
RUN apk update && apk upgrade && chmod +x /run_py_modify.sh && /run_py_modify.sh
