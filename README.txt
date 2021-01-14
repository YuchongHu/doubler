------------------------------- Readme ----------------------------
0. System Requirements

We have tested DoubleR on Ubuntu 14.04 LTS.

1. Software Requirements

> Java8
> yasm
  There is a copy "yasm_1.2.0.orig.tar.gz" on our website
> isa-l
  There is a copy "isa-l-2.14.0.tar.gz" on our website
> ant
  There is a copy "apache-ant-1.9.9-bin.tar.gz" on our website

Note that we implement Erasure Codes using isa-l library.

2. Download hadoop-20

There is a copy "hadoop-20.tar.gz" on our website, you can just download it.
You can set HADOOP_HOME to your hadoop-20 directory.

3. Edit install.sh

Set proper path to "HADOOP_HOME", "DOUBLER_HOME" and "JAVA_HOME", then 
run install.sh: `./install.sh`

4. Configuration
4.1 core-site.xml

You can set proper value to the following settings in core-site.xml according to your
installation.

<property><name>fs.default.name</name><value>hdfs://192.168.0.1:9000</value></property>
<property><name>topology.script.file.name</name><value>/home/user/hadoop-20-master/rackAware.sh</value></property>
<property><name>hadoop.tmp.dir</name><value>/home/user/hadoop-20-master/tmp</value></property>

4.2 hadoop-env.sh

set proper value to : "JAVA_HOME" and "HADOOP_USERNAME" in hadoop-env.sh

4.3 hdfs-site.xml

You can change "dfs.block.size" to different size.
<property><name>dfs.block.size</name><value>1048576</value></property>

You can also change "hdfs.raid.strip.size" accordingly.(And please make sure that
"raid.decoder.bufsize" is the same with "hdfs.raid.strip.size")
<property><name>hdfs.raid.strip.size</name><value>1048576</value></property>
<property><name>raid.decoder.bufsize</name><value>1048576</value></property>

You should set "dfs.datanode.dns.interface" to your NIC name. (Please note that
it might be different if the NIC name varies in different datanodes.)
<property><name>dfs.datanode.dns.interface</name><value>eth0</value></property>

4.4 erasure coding related
You can configure erasure code through the following property "raid.codeds.json".
<property>
<name>raid.codecs.json</name>
<value>[{
"id" : "drc",
"parity_dir" : "/drc",
"stripe_length" : 4,
"parity_length" : 2,
"group_num" : 3,
"group_size" : 2,
"drc_type" : 1,
"priority" : 100,
"erasure_code" : "org.apache.hadoop.raid.DRCCode",
"description" : "double regenerating code",
"simulate_block_fix": false,
"dir_raid" : true}]
</value>
</property>

As we mentioned in our papar, we export a set of erasure coding APIs and we implement
many erasure codes using our API. To use those erasure codes, we can only set
"stripe_length", "parity_length", "group_num", "group_size" and "drc_type".

|-- Code Name --|--stripe_length--|--parity_length--|--group_num--|----group_size--|--drc_type--|
|    DRC643     |        4        |        2        |      3      |        2       |     1      |
|    DRC864     |        6        |        2        |      4      |        2       |     2      |
|    DRC963     |        6        |        3        |      3      |        3       |     3      |
|    DRC633     |        3        |        3        |      3      |        3       |     4      |
|    DRC953     |        5        |        4        |      3      |        3       |     5      |
|    IA         |      group_num * group_size = stripe_length + parity_length      |     6      |
|  BUTTERFLY64  |        4        |        2        | group_num * group_size = 6   |     7      |
|  BUTTERFLY86  |        6        |        2        | group_num * group_size = 8   |     8      |
|    RSBASE     |      group_num * group_size = stripe_length + parity_length      |     9      |
|    CAR        |      group_num * group_size = stripe_length + parity_length      |     10     |

Note: 

a) DRC Code can only support these limited settings. 

b) BUTTERFLY Code can only support the 2 settings here with different rackAware settings.
  For example, when you choose BUTTERFLY64, you can set (group_num, group_size) to (6, 1) or (3, 2);
c) IA, RSBASE and CAR support generate parameters.


4.5 masters

This file contains the master ip.

4.6 slaves

This file constains all the slaves ip, one ip per line.

4.7 raid.xml

set the proper "prefix" in this file according to your master.

4.8 rackAware.sh

There is an example file under your HADOOP_HOME after you run install.sh.
You can also modify it to other network topology as you like.

5. Run Hadoop

After the configuration, you can start it.

`hadoop namenode -format`
`start-dfs.sh`

To write a file into HDFS:
`hadoop dfs -put input raidTest/input` 
(Please note that the default erasure code prefix is raidTest, as specified in raid.xml. 
You can also use other names)

To test recover:
`stop-dfs.sh`
`stop-raidnode.sh`
Then ssh to one of the datanodes and delete one block on that node.
`start-dfs.sh`
`start-raidnode.sh`

To test degraded read:
After you delete the block, you just start hadoop
`start-dfs.sh`
Then instead of start raidnode, you just need to read the file which contains the lost block.
`hadoop dfs -copyToLocal raidTest/input output`
And you can compare the output file with the input file to check the correctness.

6. Run erasure code without hadoop

We also provide a tester to test our erasure code interface without hadoop.
You can `cd drc_interface` and run `./tester` to get detail usage.
