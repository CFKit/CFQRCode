//
//  QRCode.swift
//  CFQRCode
//
//  Created by 成飞 on 16/6/23.
//  Copyright © 2016年 成飞. All rights reserved.
//

import UIKit
import AVFoundation
//  1. 将类设置为公共类
public class QRCode: NSObject {
    //  如果要开放给外部调用的方法，需要使用 public 关键字

    //  开始扫描
    public func scan() {
        //  1. 判断会话能否添加输入设备
        if !session.canAddInput(videoInput) {
            print("无法添加输入设备")
            return
        }
        //  2. 判断会话能否添加输出设备
        if !session.canAddOutput(dataOutput) {
            print("无法添加输出设备")
            return
        }
//        //  6. 添加预览图层
//        view.layer.insertSublayer(drawLayer, atIndex: 0)
//        view.layer.insertSublayer(previewLayer, atIndex: 0)
//        
//        //  3. 需要将设备添加到会话中，才能或得 - 输出数据支持的格式
//        session.addInput(videoInput)
//        session.addOutput(dataOutput)
//        
//        //  4. 设置输出识别的格式 & 代理
//        dataOutput.metadataObjectTypes = dataOutput.availableMetadataObjectTypes
//        dataOutput.setMetadataObjectsDelegate(self, queue: dispatch_get_main_queue())
//        
//        //  5. 启动会话
//        session.startRunning()
    }
    
    
    
    
    /// 拍摄会话
    lazy var session = AVCaptureSession()
    /// 输入设备 - 摄像头
    lazy var videoInput: AVCaptureDeviceInput? = {
        let device = AVCaptureDevice.defaultDeviceWithMediaType(AVMediaTypeVideo)
        let input = try? AVCaptureDeviceInput(device: device)
        
        return input
    } ()
    /// 输出设备
    lazy var dataOutput = AVCaptureMetadataOutput()
    /// 预览视图
    lazy var previewLayer: AVCaptureVideoPreviewLayer = {
        let layer = AVCaptureVideoPreviewLayer(session: self.session)
//        layer.frame = self.view.bounds
        return layer
    }()
    /// 绘图图层
    lazy var drawLayer: CALayer = CALayer()



}
