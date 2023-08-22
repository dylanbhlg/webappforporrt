import sys
import json

from flask import Flask, render_template, request
from configparser import ConfigParser
from confluent_kafka import Producer
from confluent_kafka.serialization import (StringSerializer,SerializationContext,MessageField,)
from confluent_kafka.schema_registry import SchemaRegistryClient
from confluent_kafka.schema_registry.avro import AvroSerializer


app = Flask(__name__)


# Load configuration from INI file
config_parser = ConfigParser()
config_parser.read("config.ini")

# SR client
sr_config = dict(config_parser["schema-registry"])
schema_registry_client = SchemaRegistryClient(sr_config)

# Load Avro schema from a file
with open("schema.avsc", "r") as file:
    value_schema_str = json.dumps(json.loads(file.read()))

avro_serializer = AvroSerializer(schema_registry_client,
                                     value_schema_str)

string_serializer = StringSerializer('utf_8')


kafka_config = dict(config_parser["default"])
producer = Producer(kafka_config)

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)
