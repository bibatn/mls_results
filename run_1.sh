project_dir=$(pwd)
for file in *.pcd
do
  for noized_file in noized/${file:0:${#file}-4}*
  do
    #echo $file $mls_file >> results1.txt
    cloudcompare.CloudCompare -O $noized_file -O $file -C_EXPORT_FMT ASC -EXT txt -C2C_DIST &
  done
done

#(1st = compared / 2nd = reference).
