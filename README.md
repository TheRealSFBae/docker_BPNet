# BPNet on CentOS

Find docker image here: https://hub.docker.com/repository/docker/angelopelonero/bpnet_centos8

Dockerized [BPNet](https://www.biorxiv.org/content/10.1101/737981v2) for easy distribution. Docker user andrewsg built [BPNet on Debian Linux](https://hub.docker.com/r/andrewsg/bpnet), but I wanted to build our environment on CentOS for a few reasons:

1. CentOS has a longer lifecycle schedule than Debian. This is good for stability and long-term use.
2. I like CentOS/RHEL.
3. Wynton and our lab servers are all CentOS based - any UCSF users who's intro to UNIX was via Wytnon will be familiar with this architecture
4. I like CentOS/RHEL.

More README to come.

## Docker Setup

### Docker

[coming soon]

### Docker to Singularity (for HPC)

[coming soon]

##### BPNet config notes:

🪆🪆🪆
This Docker image uses Anaconda to manage dependencies. Setup instructions were followed from the [Kundaje Lab BPNet GitHub](https://github.com/kundajelab/bpnet) with slight modifications.
🪆🪆🪆

Prereqs (CentOS, also other systems):

- Anaconda/miniconda
- Git
- Nano (or any text editor)

Configure new conda env:

```
conda create -n bpnet python=3.6

### added this to end of bashrc to load env automatically
source activate bpnet

conda install -c bioconda pybedtools bedtools pybigwig pysam genomelake

pip install git+https://github.com/kundajelab/DeepExplain.git

pip install tensorflow~=1.14.0 # or tensorflow-gpu if you are using a GPU

### no longer on pip - tar.gz included in this repo
pip install pprint-0.1.tar.gz

pip install bpnet

echo 'export HDF5_USE_FILE_LOCKING=FALSE' >> ~/.bashrc
```
These instructions should work on most systems running Anaconda and were what I used to configure BPNet both on my machines as well as in Docker. All files used for setup on CentOS + a short setup summary (in this repo: src/homedir_README.txt) can be found in the Docker Image at `/home/BPNetConda_setup_files/`.
