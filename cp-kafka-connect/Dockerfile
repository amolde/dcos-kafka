FROM confluentinc/cp-kafka-connect:5.3.0

RUN confluent-hub install --component-dir /usr/share/java --no-prompt jcustenborder/kafka-connect-spooldir:1.0.41 \
   && confluent-hub install --component-dir /usr/share/java --no-prompt confluentinc/kafka-connect-avro-converter:5.4.0

COPY jars/ /usr/share/java/.
