import 'package:cloud_storage_app/constant/app_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../../model/files_and_folder_model.dart';

class DriveDetailViewModel extends BaseViewModel{

  List<FilesAndFolder> _list = [];
  List<FilesAndFolder> get list => _list;



 void getFolderAndFile() async{



  _list.add(
    FilesAndFolder(
      name: 'Documents',
      createAt: 'Created July 05 2020',
      total: 'Total - 2GB',
      icon: documentIcon,
      color: const Color(0xffdeebff),
      thumbNail: [
        thubnailImage1,
        thubnailImage3,
        thubnailImage2,
        ''
      ]
    )
  );

    _list.add(
    FilesAndFolder(
      name: 'Photos',
      createAt: 'Created April 05 2020',
      total: 'Total - 3.5GB',
      icon: cameraIcon,
      color: const Color(0xfffff7f3),
      thumbNail: [
        thubnailImage5,
        thubnailImage4,
        ''
      ]
    )
  );
    _list.add(
    FilesAndFolder(
      name: 'Mobile App Project',
      createAt: 'Created June 16 2020',
      total: 'Total - 16.5GB',
      icon: phoneIcon,
      color: const Color(0xffe0fbef),
      thumbNail: [
        thubnailImage3,
        thubnailImage5,
        thubnailImage1,
        ''
      ]
    )
  );
    _list.add(
    FilesAndFolder(
      name: 'Bank Account Details',
      createAt: 'Created Feb 10 2020',
      total: 'Total - 150MB',
      icon: bankIcon,
      color: const Color(0xffe8e8e8),
      thumbNail: [
        thubnailImage2,
        ''
      ]
    )
  );
    _list.add(
    FilesAndFolder(
      name: 'Invoice',
      createAt: 'Created Jan 02 2020',
      total: 'Total - 880MB',
      icon: cashIcon,
      color: const Color(0xffffe9e5),
      thumbNail: [
        thubnailImage1,
        thubnailImage4,
        thubnailImage3,
        ''
      ]
    )
  );
}

}


