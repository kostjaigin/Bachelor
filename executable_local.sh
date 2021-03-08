$SPARK_HOME/bin/spark-submit \
--master k8s://https://kubernetes.docker.internal:6443 \
--deploy-mode cluster \
--conf spark.executor.instances=$2 \
--conf spark.kubernetes.container.image=docker.io/kostjaigin/spark-py:v3.0.1-Ugin_0.1.135 \
--files "local:///opt/spark/data/build/dll/libgnn.d" \
--files "local:///opt/spark/data/build/dll/libgnn.so" \
--files "local:///opt/spark/data/build/lib/config.d" \
--files "local:///opt/spark/data/build/lib/config.o" \
--files "local:///opt/spark/data/build/lib/graph_struct.d" \
--files "local:///opt/spark/data/build/lib/graph_struct.o" \
--files "local:///opt/spark/data/build/lib/msg_pass.d" \
--files "local:///opt/spark/data/build/lib/msg_pass.o" \
--files "local:///opt/spark/data/models/USAir_hyper.pkl" \
--files "local:///opt/spark/data/models/USAir_model.pth" \
--files "local:///opt/spark/data/prediction_data/USAir.mat" \
--files "local:///opt/spark/data/models/PB_hyper.pkl" \
--files "local:///opt/spark/data/models/PB_model.pth" \
--files "local:///opt/spark/data/prediction_data/PB.mat" \
--files "local:///opt/spark/data/models/facebook_hyper.pkl" \
--files "local:///opt/spark/data/models/facebook_model.pth" \
--files "local:///opt/spark/data/prediction_data/facebook.mat" \
--files "local:///opt/spark/data/models/arxiv_hyper.pkl" \
--files "local:///opt/spark/data/models/arxiv_model.pth" \
--files "local:///opt/spark/data/prediction_data/arxiv.mat" \
--files "local:///opt/spark/data/models/yeast_hyper.pkl" \
--files "local:///opt/spark/data/models/yeast_model.pth" \
--files "local:///opt/spark/data/prediction_data/yeast.mat" \
--py-files "local:///opt/spark/data/dependencies.zip" \
local:///opt/spark/data/Extraction.py $@
