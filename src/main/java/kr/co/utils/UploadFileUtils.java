package kr.co.utils;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import org.springframework.util.FileCopyUtils;
import net.coobird.thumbnailator.Thumbnails;

public class UploadFileUtils {
  
 static final int THUMB_WIDTH = 300;
 static final int THUMB_HEIGHT = 300;
 //uploadPath = C:\eclipse-workspace-21-06\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\ProjectSNS\resource

 public static String fileUpload(String imgUploadPath,
         String fileName,
         byte[] fileData, String ymdPath) throws Exception {
	 
  UUID uid = UUID.randomUUID(); //Random Id
  
  String newFileName = uid + "_" + fileName;//새파일 이름
  String imgPath = imgUploadPath + ymdPath;//폴더 imgUpladPath + ymdPath 이므로 imgUploadPath에 적힌 경로 + 년/월/일 폴더 경로로 이동.
  //파일 폴더.uploadPath = resource까지 ymdPath = 년/월/일 폴더 만듬
  
  File target = new File(imgPath, newFileName);//타겟은 저장할 폴더이름, 저장할 파일이름.

  FileCopyUtils.copy(fileData, target);//문제발견.
  
  String thumbFileName = "s_" + newFileName;
  File image = new File(imgPath + File.separator + newFileName);

  File thumbnail = new File(imgPath + File.separator + "s" + File.separator + thumbFileName);
  
  if (image.exists()) {
   thumbnail.getParentFile().mkdirs();
   Thumbnails.of(image).size(THUMB_WIDTH, THUMB_HEIGHT).toFile(thumbnail);
  }
  
  return newFileName;
  
 }

 public static String calcPath(String uploadPath) {
  Calendar cal = Calendar.getInstance();
  String yearPath = File.separator + cal.get(Calendar.YEAR);
  String monthPath = yearPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
  String datePath = monthPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.DATE));

  makeDir(uploadPath, yearPath, monthPath, datePath);
  makeDir(uploadPath, yearPath, monthPath, datePath + "\\s");

  return datePath;
 }

 private static void makeDir(String uploadPath, String... paths) {

  if (new File(paths[paths.length - 1]).exists()) { return; }

  for (String path : paths) {
   File dirPath = new File(uploadPath + path);

   if (!dirPath.exists()) {
    dirPath.mkdir();
   }
  }
 }
}