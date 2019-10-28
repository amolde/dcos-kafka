FROM confluentinc/cp-kafka-connect:5.3.0

RUN confluent-hub install --component-dir /usr/share/java --no-prompt confluentinc/kafka-connect-salesforce:1.3.0 \
   && confluent-hub install --component-dir /usr/share/java --no-prompt confluentinc/kafka-connect-servicenow:1.0.0-preview \
   && confluent-hub install --component-dir /usr/share/java --no-prompt confluentinc/kafka-connect-http:1.0.3 \
   && confluent-hub install --component-dir /usr/share/java --no-prompt jcustenborder/kafka-connect-spooldir:1.0.41 \
   && confluent-hub install --component-dir /usr/share/java --no-prompt confluentinc/kafka-connect-rabbitmq:1.1.1
