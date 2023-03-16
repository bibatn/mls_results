sigma1=0.005
sigma1=0.01
sigma2=0.03
mkdir noized
for file in *.pcd
do
  pcl_add_gaussian_noise $file noized/${file:0:${#file}-4}005.pcd -sd 0.005
  pcl_add_gaussian_noise $file noized/${file:0:${#file}-4}01.pcd -sd 0.01
  pcl_add_gaussian_noise $file noized/${file:0:${#file}-4}03.pcd -sd 0.03
done

