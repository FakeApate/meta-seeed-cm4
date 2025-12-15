INHERIT:append = " \
	populate_sdk_qt5 \
	"
# Set root password for core-image-minimal
# This bbappend adds SSH access with default password "seeed"

# Function to set root password
set_root_passwd() {
    echo 'root:seeed' | chpasswd -R ${IMAGE_ROOTFS}
}

# Add the function to the post-process commands
ROOTFS_POSTPROCESS_COMMAND:append = " set_root_passwd; "

SPLASH = "psplash-raspberrypi"

IMAGE_FEATURES:append = " \
	ssh-server-dropbear \
	splash \
	"

IMAGE_INSTALL:append = " \
	kernel-modules \
	seeed-linux-dtoverlays \
	qtbase \
	qtbase-plugins \
	qtbase-tools  \
	ttf-dejavu-sans ttf-dejavu-sans-mono ttf-dejavu-sans-condensed \
	ttf-dejavu-serif ttf-dejavu-serif-condensed ttf-dejavu-common \
	python3-pyqt5 \
	python3-logging \
	python3-psutil \
	python3-evdev \
	evtest \
	iperf3 \
	i2c-tools \
	util-linux \
	e2fsprogs-resize2fs \
	parted \
	glibc \
	python3-pip \
	spidev-test \
	python3-seeed-python-reterminal \
	"

