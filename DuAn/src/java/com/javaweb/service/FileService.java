/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.javaweb.service;

import java.util.Date;

/**
 *
 * @author Nguyễn Chí Tuấn
 */
public class FileService {
    public static String ChangeFileName(String fileName){
        
        int index = fileName.lastIndexOf(".");
        String fileType = fileName.substring(index);
        fileName = fileName.substring(0, index);
        
        Date date = new Date();
        
        fileName = fileName + date.getTime();
        
        fileName = fileName +  fileType;
        
        return fileName;
    }
}
