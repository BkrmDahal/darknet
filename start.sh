# https://medium.com/@manivannan_data/how-to-train-yolov3-to-detect-custom-objects-ccbcafeb13d2
echo "make file"
make

echo "download weight"
wget https://pjreddie.com/media/files/darknet53.conv.74

echo "start training"
./darknet detector train cfg/obj.data cfg/invoice-yolov3.cfg darknet53.conv.74
