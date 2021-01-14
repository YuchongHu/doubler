#!/bin/bash

# Please set HADOOP_HOME, DOUBLER_HOME and JAVA_HOMT
# HADOOP_HOME is the directory where you run hadoop-20
# DOUBLER_HOME is the path to this DoubleR-integrate director
# JAVA_HOME is your system directory where you install java

HADOOP_HOME=/home/user/hadoop-20
DOUBLER_HOME=`pwd`
JAVA_HOME=/usr/lib/jvm/java-8-oracle

echo copy files from $DOUBLER_HOME/hadoop-20 to $HADOOP_HOME

cp $DOUBLER_HOME/hadoop-20/hadoop-0.20-raid.jar $HADOOP_HOME/lib

cp $DOUBLER_HOME/hadoop-20/build.xml $HADOOP_HOME
cp $DOUBLER_HOME/hadoop-20/rackAware.sh $HADOOP_HOME

# DRC Code related
cp $DOUBLER_HOME/hadoop-20/src/NativeDRC.java   $HADOOP_HOME/src/core/org/apache/hadoop/util/NativeDRC.java
cp $DOUBLER_HOME/hadoop-20/src/DRCCode.java   $HADOOP_HOME/src/core/org/apache/hadoop/raid/DRCCode.java
cp $DOUBLER_HOME/hadoop-20/src/NativeDRC.cc   $HADOOP_HOME/src/native/src/org/apache/hadoop/util/
cp $DOUBLER_HOME/hadoop-20/src/NativeDRC.h $HADOOP_HOME/src/native/src/org/apache/hadoop/util/NativeDRC.h
cp $DOUBLER_HOME/hadoop-20/src/drc.*   $HADOOP_HOME/src/native/src/org/apache/hadoop/util/
cp $DOUBLER_HOME/hadoop-20/src/drc633.*   $HADOOP_HOME/src/native/src/org/apache/hadoop/util/
cp $DOUBLER_HOME/hadoop-20/src/drc643.*   $HADOOP_HOME/src/native/src/org/apache/hadoop/util/
cp $DOUBLER_HOME/hadoop-20/src/drc864.*   $HADOOP_HOME/src/native/src/org/apache/hadoop/util/
cp $DOUBLER_HOME/hadoop-20/src/drc953.*   $HADOOP_HOME/src/native/src/org/apache/hadoop/util/
cp $DOUBLER_HOME/hadoop-20/src/drc963.*   $HADOOP_HOME/src/native/src/org/apache/hadoop/util/
cp $DOUBLER_HOME/hadoop-20/src/ia.*   $HADOOP_HOME/src/native/src/org/apache/hadoop/util/
cp $DOUBLER_HOME/hadoop-20/src/butterfly64.*   $HADOOP_HOME/src/native/src/org/apache/hadoop/util/
cp $DOUBLER_HOME/hadoop-20/src/butterfly86.*   $HADOOP_HOME/src/native/src/org/apache/hadoop/util/
cp $DOUBLER_HOME/hadoop-20/src/rsbase.*   $HADOOP_HOME/src/native/src/org/apache/hadoop/util/
cp $DOUBLER_HOME/hadoop-20/src/car.*   $HADOOP_HOME/src/native/src/org/apache/hadoop/util/

# Hadoop framwork related
cp $DOUBLER_HOME/hadoop-20/src/LocalBlockIntegrityMonitor.java   $HADOOP_HOME/src/contrib/raid/src/java/org/apache/hadoop/raid/LocalBlockIntegrityMonitor.java
cp $DOUBLER_HOME/hadoop-20/src/CorruptStripeInfo.java   $HADOOP_HOME/src/contrib/raid/src/java/org/apache/hadoop/raid/CorruptStripeInfo.java
cp $DOUBLER_HOME/hadoop-20/src/LocatedBlockWithFileName.java   $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/protocol/LocatedBlockWithFileName.java
cp $DOUBLER_HOME/hadoop-20/src/ParityFilePair.java   $HADOOP_HOME/src/contrib/raid/src/java/org/apache/hadoop/raid/ParityFilePair.java
cp $DOUBLER_HOME/hadoop-20/src/RaidNode.java   $HADOOP_HOME/src/contrib/raid/src/java/org/apache/hadoop/raid/RaidNode.java
cp $DOUBLER_HOME/hadoop-20/src/Decoder.java   $HADOOP_HOME/src/contrib/raid/src/java/org/apache/hadoop/raid/Decoder.java
cp $DOUBLER_HOME/hadoop-20/src/DRCDecoder.java   $HADOOP_HOME/src/hdfs/org/apache/hadoop/raid/DRCDecoder.java
cp $DOUBLER_HOME/hadoop-20/src/GroupInputStream.java   $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/GroupInputStream.java
cp $DOUBLER_HOME/hadoop-20/src/GroupReader.java   $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/GroupReader.java
cp $DOUBLER_HOME/hadoop-20/src/ReadGroupHeader.java   $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/protocol/ReadGroupHeader.java
cp $DOUBLER_HOME/hadoop-20/src/ReadStreamInfo.java   $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/ReadStreamInfo.java
cp $DOUBLER_HOME/hadoop-20/src/RaidUtils.java $HADOOP_HOME/src/contrib/raid/src/java/org/apache/hadoop/raid/RaidUtils.java
cp $DOUBLER_HOME/hadoop-20/src/DataTransferProtocol.java   $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/protocol/DataTransferProtocol.java
cp $DOUBLER_HOME/hadoop-20/src/DFSClient.java   $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/DFSClient.java
cp $DOUBLER_HOME/hadoop-20/src/ClientProtocol.java   $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/protocol/ClientProtocol.java
cp $DOUBLER_HOME/hadoop-20/src/DFSInputStream.java   $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/DFSInputStream.java
cp $DOUBLER_HOME/hadoop-20/src/BlockReader.java $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/BlockReader.java
cp $DOUBLER_HOME/hadoop-20/src/ErasureCode.java   $HADOOP_HOME/src/core/org/apache/hadoop/raid/ErasureCode.java
cp $DOUBLER_HOME/hadoop-20/src/ReadDRCBlockHeader.java   $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/protocol/ReadDRCBlockHeader.java
cp $DOUBLER_HOME/hadoop-20/src/ReedSolomonCode.java   $HADOOP_HOME/src/core/org/apache/hadoop/raid/ReedSolomonCode.java
cp $DOUBLER_HOME/hadoop-20/src/JerasureCode.java   $HADOOP_HOME/src/core/org/apache/hadoop/raid/JerasureCode.java
cp $DOUBLER_HOME/hadoop-20/src/XORCode.java   $HADOOP_HOME/src/core/org/apache/hadoop/raid/XORCode.java
cp $DOUBLER_HOME/hadoop-20/src/DistributedFileSystem.java   $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/DistributedFileSystem.java
cp $DOUBLER_HOME/hadoop-20/src/NameNode.java   $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/server/namenode/NameNode.java
cp $DOUBLER_HOME/hadoop-20/src/FSNamesystem.java   $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/server/namenode/FSNamesystem.java
cp $DOUBLER_HOME/hadoop-20/src/NetworkTopology.java   $HADOOP_HOME/src/core/org/apache/hadoop/net/NetworkTopology.java
cp $DOUBLER_HOME/hadoop-20/src/FailoverClientProtocol.java   $HADOOP_HOME/src/contrib/highavailability/src/java/org/apache/hadoop/hdfs/FailoverClientProtocol.java
cp $DOUBLER_HOME/hadoop-20/src/BlockReconstructor.java $HADOOP_HOME/src/contrib/raid/src/java/org/apache/hadoop/raid/BlockReconstructor.java
cp $DOUBLER_HOME/hadoop-20/src/Target.java   $HADOOP_HOME/src/contrib/raid/src/java/org/apache/hadoop/raid/Target.java
cp $DOUBLER_HOME/hadoop-20/src/StripeReader.java   $HADOOP_HOME/src/contrib/raid/src/java/org/apache/hadoop/raid/StripeReader.java
cp $DOUBLER_HOME/hadoop-20/src/TargetHeader.java   $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/protocol/TargetHeader.java
cp $DOUBLER_HOME/hadoop-20/src/TestDFSClientRetries.java   $HADOOP_HOME/src/test/org/apache/hadoop/hdfs/TestDFSClientRetries.java
cp $DOUBLER_HOME/hadoop-20/src/BlockDataFile.java $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/server/datanode/BlockDataFile.java
cp $DOUBLER_HOME/hadoop-20/src/IOUtils.java   $HADOOP_HOME/src/core/org/apache/hadoop/io/IOUtils.java
cp $DOUBLER_HOME/hadoop-20/src/BlockInlineChecksumReader.java $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/server/datanode/BlockInlineChecksumReader.java
cp $DOUBLER_HOME/hadoop-20/src/BlockMover.java $HADOOP_HOME/src/contrib/raid/src/java/org/apache/hadoop/raid/BlockMover.java
cp $DOUBLER_HOME/hadoop-20/src/BlockPlacementPolicyDrc.java $HADOOP_HOME/src/contrib/raid/src/java/org/apache/hadoop/hdfs/server/namenode/BlockPlacementPolicyDrc.java
cp $DOUBLER_HOME/hadoop-20/src/BlockPlacementPolicyJerasure.java $HADOOP_HOME/src/contrib/raid/src/java/org/apache/hadoop/hdfs/server/namenode/BlockPlacementPolicyJerasure.java
cp $DOUBLER_HOME/hadoop-20/src/DataXceiver.java   $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/server/datanode/DataXceiver.java
cp $DOUBLER_HOME/hadoop-20/src/DRCBlockSender.java   $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/server/datanode/DRCBlockSender.java
cp $DOUBLER_HOME/hadoop-20/src/Codec.java   $HADOOP_HOME/src/contrib/raid/src/java/org/apache/hadoop/raid/Codec.java
cp $DOUBLER_HOME/hadoop-20/src/DatanodeBlockReader.java $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/server/datanode/DatanodeBlockReader.java
cp $DOUBLER_HOME/hadoop-20/src/GroupSender.java   $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/server/datanode/GroupSender.java
cp $DOUBLER_HOME/hadoop-20/src/LocatedBlock.java   $HADOOP_HOME/src/hdfs/org/apache/hadoop/hdfs/protocol/LocatedBlock.java
cp $DOUBLER_HOME/hadoop-20/src/DistributedRaidFileSystem.java   $HADOOP_HOME/src/contrib/raid/src/java/org/apache/hadoop/hdfs/DistributedRaidFileSystem.java
cp $DOUBLER_HOME/hadoop-20/src/Encoder.java   $HADOOP_HOME/src/contrib/raid/src/java/org/apache/hadoop/raid/Encoder.java
cp $DOUBLER_HOME/hadoop-20/src/NativeJerasure.c   $HADOOP_HOME/src/native/src/org/apache/hadoop/util/
cp $DOUBLER_HOME/hadoop-20/src/NativeJerasure.h   $HADOOP_HOME/src/native/src/org/apache/hadoop/util/
cp $DOUBLER_HOME/hadoop-20/src/NativeJerasure.java   $HADOOP_HOME/src/core/org/apache/hadoop/util/NativeJerasure.java
cp $DOUBLER_HOME/hadoop-20/src/PlacementMonitor.java   $HADOOP_HOME/src/contrib/raid/src/java/org/apache/hadoop/raid/PlacementMonitor.java
cp $DOUBLER_HOME/hadoop-20/src/PurgeMonitor.java $HADOOP_HOME/src/contrib/raid/src/java/org/apache/hadoop/raid/PurgeMonitor.java

cd $HADOOP_HOME
ant -Dversion=0.20 -Dcompile.native=true clean jar bin-package

cd $HADOOP_HOME/src/native/src/org/apache/hadoop/util
g++ -I $JAVA_HOME/include/linux/ -I $JAVA_HOME/include/ -I /usr/include -fPIC -shared -o libdrc.so NativeDRC.cc drc.cc drc633.cc drc643.cc drc864.cc drc953.cc drc963.cc ia.cc butterfly64.cc butterfly86.cc rsbase.cc car.cc NativeDRC.h drc.hh drc633.hh drc643.hh drc864.hh drc953.hh drc963.hh ia.hh butterfly64.hh butterfly86.hh rsbase.hh car.hh -L/usr/lib -lisal
cp libdrc.so $HADOOP_HOME/build/native/Linux-amd64-64/lib

cp $DOUBLER_HOME/hadoop-20/bin/* $HADOOP_HOME/bin
cp $DOUBLER_HOME/hadoop-20/conf/* $HADOOP_HOME/conf

# only for erasure code interface
cd $DOUBLER_HOME
cp -r drc_interface $HADOOP_HOME/
cd $HADOOP_HOME/drc_interface
make
