. /home/m/projects_/normalize/env/bin/activate
project_dir=$(pwd)
cd mls_result_copy
for file in *.pcd
do
  python3 /home/m/projects_/normalize/delete_float_max.py $file
done
