all: unpack
getdataset:
	## From http://www.vision.caltech.edu/html-files/archive.html
	wget data/faces/faces.tar http://www.vision.caltech.edu/Image_Datasets/faces/faces.tar
unpack:
	tar -xf data/faces/faces.tar -C data/faces/
extract_faces:
	python3 src/face_extraction.py
clone_ext_repos:
	#stylegan
	git clone https://github.com/NVlabs/stylegan.git
	git clone --recursive https://github.com/AaronJackson/vrn.git
install_dependencies:
	sh install_dependencies.sh
install_python_dependencies:
	sudo -H pip3 install -r requirements.txt
install_torch:
	sudo sh install_torch.sh
