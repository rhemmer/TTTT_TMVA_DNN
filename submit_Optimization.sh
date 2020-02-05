#/bin/sh
signalFile = "TTTT_TuneCP5_PSweights_13TeV-amcatnlo-pythia8_hadd.root" # 2017 TTTT Step 2 signal

source /cvmfs/cms.cern.ch/cmsset_default.sh

export SCRAM_ARCH=slc7_amd64_gcc630
eval `scramv1 runtime -sh`

source /cvmfs/sft.cern.ch/lcg/contrib/gcc/7.3.0/x86_64-centos7-gcc7-opt/setup.sh
source /cvmfs/sft.cern.ch/lcg/app/releases/ROOT/6.16.00/x86_64-centos7-gcc48-opt/bin/thisroot.sh

python TMVAClassification_OptimizationWrapper.py -i $signalFile
