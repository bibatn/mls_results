project_dir=$(pwd)
for file in *.pcd
do
  for mls_file in mls_result_copy/${file:0:${#file}-4}*
  do
    #echo $file $mls_file >> results1.txt
    cloudcompare.CloudCompare -O $mls_file -O $file -C_EXPORT_FMT ASC -EXT txt -C2C_DIST &
  done
done

#(1st = compared / 2nd = reference).
