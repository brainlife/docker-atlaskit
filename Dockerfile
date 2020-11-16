FROM neurodebian:nd18.04-non-free

#install dependencies
RUN apt update && apt-get install -y ants fsl python3

#install atlaskit
RUN apt install -y git && git clone https://github.com/jmtyszka/atlaskit.git -b v1.0.0 /atlaskit
ENV PYTHONPATH=/atlaskit

#install template
ADD template /template


