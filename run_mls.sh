r1=0.005
r2=0.01
r3=0.03
r4=0.05
mkdir mls_result
project_dir=$(pwd)
cd noized

file=bunny01.pcd
echo $project_dir/mls_result/${file:0:${#file}-4}_005.pcd
for file in *.pcd
do
  mpirun -np 1 ~/projects/special_seminar/cmake-build-debug/surface $file $project_dir/mls_result/${file:0:${#file}-4}_005.pcd $r1
  mpirun -np 1 ~/projects/special_seminar/cmake-build-debug/surface $file $project_dir/mls_result/${file:0:${#file}-4}_01.pcd $r2
  mpirun -np 1 ~/projects/special_seminar/cmake-build-debug/surface $file $project_dir/mls_result/${file:0:${#file}-4}_03.pcd $r3
  mpirun -np 1 ~/projects/special_seminar/cmake-build-debug/surface $file $project_dir/mls_result/${file:0:${#file}-4}_05.pcd $r4
done
