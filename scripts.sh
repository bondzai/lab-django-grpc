#!/bin/bash

# generate proto file from model
python manage.py generateproto --model blog.models.Post --fields=id,title,content --file protos/blog_proto/post.proto

# generate python file from proto file
python -m grpc_tools.protoc --proto_path=./protos --python_out=./ --grpc_python_out=./ ./protos/blog_proto/post.proto
