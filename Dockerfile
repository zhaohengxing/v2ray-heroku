
FROM alpine:latest

ENV CONFIG_JSON1={\"log\":{\"access\":\"\",\"error\":\"\",\"loglevel\":\"warning\"},\"inbound\":{\"protocol\":\"vmess\",\"port\": 
ENV CONFIG_JSON2=,\"settings\":{\"clients\":[{\"id\":\" 
ENV CONFIG_JSON3=\",\"alterId\":64}]},\"streamSettings\":{\"network\":\"tcp\",\"tcpSettings\":{\"header\":{\"type\":\"http\",\"response\":{\"version\":\"1.1\",\"status\":\"200\",\"reason\":\"OK\",\"headers\":{\"Content-Type\":[\"application/octet-stream\",\"application/x-msdownload\",\"text/html\",\"application/x-shockwave-flash\"],\"Transfer-Encoding\":[\"chunked\"],\"Connection\":[\"keep-alive\"],\"Pragma\":\"no-cache\"}}}}},\"inboundDetour\":[],\"outbound\":{\"protocol\":\"freedom\",\"settings\":{}}} 

RUN mkdir -m 777 /v2raybin 
 
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 

CMD /entrypoint.sh
