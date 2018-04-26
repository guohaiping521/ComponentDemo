#!/usr/bin/env bash
echo "BuildAAR:init"
if [[ $# == 3 || $# == 4  ]] ;
then
echo "目前只支持在mac上运行"
else
echo "参数错误"
echo "必选参数:"
echo "   1 string 类型 用来标识哪个module的,必须是以下值:lib_provided_imui,lib_lcssdk,lib_imui,lib_livelesson,lib_live_base_work"
echo "   2 string 类型 用来打包aar时的版本名,如:1.0.x_SNAPSHOT"
echo "   3 string 类型 用来打包aar后,引用aar版本的key,如:versionImui"
echo "   4 string 类型 现在只在打课中livelesson时用到,是对应是选取哪个包appRelease还是airclassRelease"
echo "./buildliveaar.sh lib_live_dialogs 9.2.001_SNAPSHOT versionDialogs"
echo "./buildliveaar.sh lib_lcssdk 9.2.032_SNAPSHOT versionLcsSDK"
echo "./buildliveaar.sh lib_imui 9.2.032_SNAPSHOT versionImui"
echo "./buildliveaar.sh lib_live_base_work 9.2.001_SNAPSHOT versionLiveBaseWork:appRelease"
echo "./buildliveaar.sh lib_livelesson 9.2.032_SNAPSHOT versionLivelesson :appRelease"
exit 1;
fi

echo "BuildAAR::start build aar for  $1 module"
echo "BuildAAR::start build aar for  $2 version"
echo "BuildAAR::start build aar for  $3 version key"

if [[ ! "$1" ]] ; then
echo "module dir $1 can not found"
exit 1;
fi

if [[ $1 =~ "lib_live_base_work" ]]; then
echo "lib_live_base_work found"
echo 'include ":lib_live_base_work",":lib_provided_live_base_work"' > settings.gradle
git log --pretty=format:"%H" -n1 | cut -c -32 >subhash.txt
exit 1;
fi

echo "BuildAAR::Success!"