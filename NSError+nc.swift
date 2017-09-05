//
//  NSError+nc.swift
//  ErrorTest
//
//  Created by nicaho2 on 2017/9/5.
//  Copyright © 2017年 cl. All rights reserved.
//

import Foundation

enum NetworkError {
    case unknown// -1,  未知错误，请联系客服
    case cancelled// -999,  请求已取消，请再试！
    case badURL // -1000,  网址有误，请联系客服
    case timeout // -1001,  请求超时，请确保网络畅通
    case unsupportedURL // -1002, 网址没有被支持，请联系客服
    case cannotFindHost // -1003, 不能找到主机，请联系客服
    case cannotConnectToHost // -1004,  不能连到主机，请联系客服
    case dataLengthExceedsMaxinum // -1103,  数据长度超过最大，请联系客服
    case networkConnectLost // -1005,  网络连接失败，请确保网络畅通
    case dnsLookupFalied // -1006, DNS查询失败，，请联系客服
    case httpTooManyRedirects // -1007, HTTP太多重定向，请联系客服
    case resourceUnavailabel // -1008, 资源不可用，请联系客服
    case redirectToNonExistentLocation // -1010, 重定向到不存在的位置，请联系客服
    case badServerResponse // -1011, 错误的服务器响应，请联系客服
    case userCancelldAuthentication // -1012, 用户取消验证，请联系客服
    case userAuthenticationRequired // -1013, 用户验证请求，请联系客服
    case zeroByteResource // -1014, 零字节资源，请联系客服
    case cannotDecodeRawData // -1015, 不能解码原始数据，请联系客服
    case cannotDecodeContentData // -1016, 不能解码内容数据，请联系客服
    case cannotParseResponse // -1017, 不能解析响应，请联系客服
    case fileDoesNotExist // -1100, 文件不存在，请联系客服
    case fileIsDirectory // -1101, 文件是目录，请联系客服
    case noPermissionsToReadFile // -1102, 没有读取文件的权限，请联系客服
    case secureConnectionFailed // -1200,  安全连接失败，请联系客服
    case serverCertificateHasDate // -1201,  服务器证书有错误日期，请联系客服
    case serverCertificateUntrusted // -1202, 服务器证书不受信任，请联系客服
    case serverCertificateUnknownRoot // -1203, 服务器证书有未知Root，请联系客服
    case serverCertificateNotYetValid // -1204, 服务器证书没生效，请联系客服
    case clientCertificateRejected // -1205,  客户端证书拒绝，请联系客服
    case clientCertificateRequired // -1206,  客户端证书请求，请联系客服
    case cannotLoadFromNetwork // -2000,  不能从网络加载，请联系客服
    case cannotCreateFile // -3000,  不能创建文件，请联系客服
    case cannotOpenFile // -3001,  不能打开文件，请联系客服
    case cannotCloseFile // -3002,  不能关闭文件，请联系客服
    case cannotWriteToFile // -3003,  不能写入文件，请联系客服
    case cannotRemoveFile // -3004,  不能移除文件，请联系客服
    case cannotMoveFile // -3005,  不能移动文件，请联系客服
    case cannotDownloadDecodingFailedMidStream // -3006, 由于第三方流，下载解码失败，请联系客服
    case cannotDownloadDecodingFailedToComplete // -3007,  下载解码失败，不能完成，请联系客服
    
    case `default`
    case json
    case paramter
    
    var code: Int {
        switch self {
            
        case .unknown:
            return -1
        case .cancelled:
            return -999
        case .badURL:
            return -1000
        case .timeout:
            return -1001
        case .unsupportedURL:
            return -1002
        case .cannotFindHost:
            return  -1003
        case .cannotConnectToHost:
            return  -1004
        case .dataLengthExceedsMaxinum:
            return  -1103
        case .networkConnectLost:
            return  -1005
        case .dnsLookupFalied:
            return  -1006
        case .httpTooManyRedirects:
            return  -1007
        case .resourceUnavailabel:
            return  -1008
        case .redirectToNonExistentLocation:
            return  -1010
        case .badServerResponse:
            return  -1011
        case .userCancelldAuthentication:
            return  -1012
        case .userAuthenticationRequired:
            return  -1013
        case .zeroByteResource:
            return  -1014
        case .cannotDecodeRawData:
            return  -1015
        case .cannotDecodeContentData:
            return  -1016
        case .cannotParseResponse:
            return  -1017
        case .fileDoesNotExist:
            return  -1100
        case .fileIsDirectory:
            return  -1101
        case .noPermissionsToReadFile:
            return  -1102
        case .secureConnectionFailed:
            return  -1200
        case .serverCertificateHasDate:
            return  -1201
        case .serverCertificateUntrusted:
            return  -1202
        case .serverCertificateUnknownRoot:
            return  -1203
        case .serverCertificateNotYetValid:
            return  -1204
        case .clientCertificateRejected:
            return  -1205
        case .clientCertificateRequired:
            return  -1206
        case .cannotLoadFromNetwork:
            return  -2000
        case .cannotCreateFile:
            return  -3000
        case .cannotOpenFile:
            return  -3001
        case .cannotCloseFile:
            return  -3002
        case .cannotWriteToFile:
            return  -3003
        case .cannotRemoveFile:
            return  -3004
        case .cannotMoveFile:
            return  -3005
        case .cannotDownloadDecodingFailedMidStream:
            return  -3006
        case .cannotDownloadDecodingFailedToComplete:
            return  -3007
            
        case .default:
            return -9212
        case .json:
            return -9213
        case .paramter:
            return -9214
        }
    }
    
    var message: String {
        switch self {
        case .unknown:
            return "未知错误，请联系客服"
        case .cancelled:
            return "请求已取消，请再试"
        case .badURL:
            return "网址有误，请联系客服"
        case .timeout:
            return "请求超时，请确保网络畅通"
        case .unsupportedURL:
            return "网址没有被支持，请联系客服"
        case .cannotFindHost:
            return  "不能找到主机，请联系客服"
        case .cannotConnectToHost:
            return  "不能连到主机，请联系客服"
        case .dataLengthExceedsMaxinum:
            return  "数据长度超过最大，请联系客服"
        case .networkConnectLost:
            return  "网络连接失败，请确保网络畅通"
        case .dnsLookupFalied:
            return  "DNS查询失败，，请联系客服"
        case .httpTooManyRedirects:
            return  "HTTP太多重定向，请联系客服"
        case .resourceUnavailabel:
            return  "资源不可用，请联系客服"
        case .redirectToNonExistentLocation:
            return  "重定向到不存在的位置，请联系客服"
        case .badServerResponse:
            return  "错误的服务器响应，请联系客服"
        case .userCancelldAuthentication:
            return  "用户取消验证，请联系客服"
        case .userAuthenticationRequired:
            return  "用户验证请求，请联系客服"
        case .zeroByteResource:
            return  "零字节资源，请联系客服"
        case .cannotDecodeRawData:
            return  "不能解码原始数据，请联系客服"
        case .cannotDecodeContentData:
            return  "不能解码内容数据，请联系客服"
        case .cannotParseResponse:
            return  "不能解析响应，请联系客服"
        case .fileDoesNotExist:
            return  "文件不存在，请联系客服"
        case .fileIsDirectory:
            return  "文件是目录，请联系客服"
        case .noPermissionsToReadFile:
            return  "没有读取文件的权限，请联系客服"
        case .secureConnectionFailed:
            return  "安全连接失败，请联系客服"
        case .serverCertificateHasDate:
            return  "服务器证书有错误日期，请联系客服"
        case .serverCertificateUntrusted:
            return  "服务器证书不受信任，请联系客服"
        case .serverCertificateUnknownRoot:
            return  "服务器证书有未知Root，请联系客服"
        case .serverCertificateNotYetValid:
            return  "服务器证书没生效，请联系客服"
        case .clientCertificateRejected:
            return  "客户端证书拒绝，请联系客服"
        case .clientCertificateRequired:
            return  "客户端证书请求，请联系客服"
        case .cannotLoadFromNetwork:
            return  "不能从网络加载，请联系客服"
        case .cannotCreateFile:
            return  "不能创建文件，请联系客服"
        case .cannotOpenFile:
            return  "不能打开文件，请联系客服"
        case .cannotCloseFile:
            return  "不能关闭文件，请联系客服"
        case .cannotWriteToFile:
            return  "不能写入文件，请联系客服"
        case .cannotRemoveFile:
            return  "不能移除文件，请联系客服"
        case .cannotMoveFile:
            return  "不能移动文件，请联系客服"
        case .cannotDownloadDecodingFailedMidStream:
            return  "由于第三方流，下载解码失败，请联系客服"
        case .cannotDownloadDecodingFailedToComplete:
            return  "下载解码失败，不能完成，请联系客服"
            
            
        case .default:
            return "网络状态不佳！"
        case .json:
            return "服务器数据解析错误！"
        case .paramter:
            return "参数错误，请稍候再试！"
        }
    }
}
extension NSError {
    class func network(message: String, code: Int) -> NSError {
        let userInfo = [NSLocalizedDescriptionKey: message.localized,
                        NSLocalizedFailureReasonErrorKey: message.localized]
        return NSError(domain: "com.xxx.networkerror", // 根据情况，改变domain
                       code: code,
                       userInfo: userInfo)
    }
    func codeMessage() -> (message: String, code: Int) {
        var result = (message: "", code: 0)
        switch self.code {
        case NSURLErrorUnknown:
            result = (NetworkError.unknown.message, NetworkError.unknown.code)
        case NSURLErrorCancelled:
            result = (NetworkError.cancelled.message, NetworkError.cancelled.code)
        case NSURLErrorBadURL:
            result = (NetworkError.badURL.message, NetworkError.badURL.code)
        case NSURLErrorTimedOut:
            result = (NetworkError.timeout.message, NetworkError.timeout.code)
        case NSURLErrorUnsupportedURL:
            result = (NetworkError.unsupportedURL.message, NetworkError.unsupportedURL.code)
        case NSURLErrorCannotFindHost:
            result = (NetworkError.cannotFindHost.message, NetworkError.cannotFindHost.code)
        case NSURLErrorCannotConnectToHost:
            result = (NetworkError.cannotConnectToHost.message, NetworkError.cannotConnectToHost.code)
        case NSURLErrorDataLengthExceedsMaximum:
            result = (NetworkError.dataLengthExceedsMaxinum.message, NetworkError.dataLengthExceedsMaxinum.code)
        case NSURLErrorNetworkConnectionLost:
            result = (NetworkError.networkConnectLost.message, NetworkError.networkConnectLost.code)
        case NSURLErrorDNSLookupFailed:
            result = (NetworkError.dnsLookupFalied.message, NetworkError.dnsLookupFalied.code)
        case NSURLErrorHTTPTooManyRedirects:
            result = (NetworkError.httpTooManyRedirects.message, NetworkError.httpTooManyRedirects.code)
        case NSURLErrorResourceUnavailable:
            result = (NetworkError.resourceUnavailabel.message, NetworkError.resourceUnavailabel.code)
        case NSURLErrorRedirectToNonExistentLocation:
            result = (NetworkError.redirectToNonExistentLocation.message, NetworkError.redirectToNonExistentLocation.code)
        case NSURLErrorBadServerResponse:
            result = (NetworkError.badServerResponse.message, NetworkError.badServerResponse.code)
        case NSURLErrorUserAuthenticationRequired:
            result = (NetworkError.userAuthenticationRequired.message, NetworkError.userAuthenticationRequired.code)
        case NSURLErrorUserCancelledAuthentication:
            result = (NetworkError.userCancelldAuthentication.message, NetworkError.userCancelldAuthentication.code)
        case NSURLErrorZeroByteResource:
            result = (NetworkError.zeroByteResource.message, NetworkError.zeroByteResource.code)
        case NSURLErrorCannotDecodeRawData:
            result = (NetworkError.cannotDecodeRawData.message, NetworkError.cannotDecodeRawData.code)
        case NSURLErrorCannotDecodeContentData:
            result = (NetworkError.cannotDecodeContentData.message, NetworkError.cannotDecodeContentData.code)
        case NSURLErrorCannotParseResponse:
            result = (NetworkError.cannotParseResponse.message, NetworkError.cannotParseResponse.code)
        case NSURLErrorFileDoesNotExist:
            result = (NetworkError.fileDoesNotExist.message, NetworkError.fileDoesNotExist.code)
        case NSURLErrorFileIsDirectory:
            result = (NetworkError.fileIsDirectory.message, NetworkError.fileIsDirectory.code)
        case NSURLErrorNoPermissionsToReadFile:
            result = (NetworkError.noPermissionsToReadFile.message, NetworkError.noPermissionsToReadFile.code)
        case NSURLErrorSecureConnectionFailed:
            result = (NetworkError.secureConnectionFailed.message, NetworkError.secureConnectionFailed.code)
        case NSURLErrorServerCertificateHasBadDate:
            result = (NetworkError.serverCertificateHasDate.message, NetworkError.serverCertificateHasDate.code)
        case NSURLErrorServerCertificateUntrusted:
            result = (NetworkError.serverCertificateUntrusted.message, NetworkError.serverCertificateUntrusted.code)
        case NSURLErrorServerCertificateHasUnknownRoot:
            result = (NetworkError.serverCertificateUnknownRoot.message, NetworkError.serverCertificateUnknownRoot.code)
        case NSURLErrorServerCertificateNotYetValid:
            result = (NetworkError.serverCertificateNotYetValid.message, NetworkError.serverCertificateNotYetValid.code)
        case NSURLErrorClientCertificateRejected:
            result = (NetworkError.clientCertificateRejected.message, NetworkError.clientCertificateRejected.code)
        case NSURLErrorClientCertificateRequired:
            result = (NetworkError.clientCertificateRequired.message, NetworkError.clientCertificateRequired.code)
        case NSURLErrorCannotLoadFromNetwork:
            result = (NetworkError.cannotLoadFromNetwork.message, NetworkError.cannotLoadFromNetwork.code)
        case NSURLErrorCannotCreateFile:
            result = (NetworkError.cannotCreateFile.message, NetworkError.cannotCreateFile.code)
        case NSURLErrorCannotOpenFile:
            result = (NetworkError.cannotOpenFile.message, NetworkError.cannotOpenFile.code)
        case NSURLErrorCannotCloseFile:
            result = (NetworkError.cannotCloseFile.message, NetworkError.cannotCloseFile.code)
        case NSURLErrorCannotWriteToFile:
            result = (NetworkError.cannotWriteToFile.message, NetworkError.cannotWriteToFile.code)
        case NSURLErrorCannotRemoveFile:
            result = (NetworkError.cannotRemoveFile.message, NetworkError.cannotRemoveFile.code)
        case NSURLErrorCannotMoveFile:
            result = (NetworkError.cannotMoveFile.message, NetworkError.cannotMoveFile.code)
        case NSURLErrorDownloadDecodingFailedMidStream:
            result = (NetworkError.cannotDownloadDecodingFailedMidStream.message, NetworkError.cannotDownloadDecodingFailedMidStream.code)
        case NSURLErrorDownloadDecodingFailedToComplete:
            result = (NetworkError.cannotDownloadDecodingFailedToComplete.message, NetworkError.cannotDownloadDecodingFailedToComplete.code)
        default:
            result = (NetworkError.default.message, NetworkError.default.code)
        }
        return result
    }
}
