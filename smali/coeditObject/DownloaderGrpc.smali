.class public final LcoeditObject/DownloaderGrpc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditObject/DownloaderGrpc$MethodHandlers;,
        LcoeditObject/DownloaderGrpc$DownloaderFutureStub;,
        LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;,
        LcoeditObject/DownloaderGrpc$DownloaderStub;,
        LcoeditObject/DownloaderGrpc$DownloaderImplBase;
    }
.end annotation

.annotation build Lio/grpc/stub/annotations/GrpcGenerated;
.end annotation


# static fields
.field private static final METHODID_DOWNLOAD_STROKE:I = 0x1

.field private static final METHODID_GET_SIGNED_DOWNLOAD_URL:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "coeditObject.Downloader"

.field private static volatile getDownloadStrokeMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "LcoeditObjectMessage/DownloadStrokeRequest;",
            "LcoeditObjectMessage/DownloadStrokeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getGetSignedDownloadUrlMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "LcoeditObjectMessage/SignedDownloadUrlRequest;",
            "LcoeditObjectMessage/SignedDownloadUrlResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile serviceDescriptor:Lio/grpc/ServiceDescriptor;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDownloadStrokeMethod()Lio/grpc/MethodDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "LcoeditObjectMessage/DownloadStrokeRequest;",
            "LcoeditObjectMessage/DownloadStrokeResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lio/grpc/stub/annotations/RpcMethod;
        fullMethodName = "coeditObject.Downloader/DownloadStroke"
        methodType = .enum Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;
        requestType = LcoeditObjectMessage/DownloadStrokeRequest;
        responseType = LcoeditObjectMessage/DownloadStrokeResponse;
    .end annotation

    sget-object v0, LcoeditObject/DownloaderGrpc;->getDownloadStrokeMethod:Lio/grpc/MethodDescriptor;

    if-nez v0, :cond_1

    const-class v1, LcoeditObject/DownloaderGrpc;

    monitor-enter v1

    :try_start_0
    sget-object v0, LcoeditObject/DownloaderGrpc;->getDownloadStrokeMethod:Lio/grpc/MethodDescriptor;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    sget-object v2, Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    const-string v2, "coeditObject.Downloader"

    const-string v3, "DownloadStroke"

    invoke-static {v2, v3}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LcoeditObjectMessage/DownloadStrokeRequest;->getDefaultInstance()LcoeditObjectMessage/DownloadStrokeRequest;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LcoeditObjectMessage/DownloadStrokeResponse;->getDefaultInstance()LcoeditObjectMessage/DownloadStrokeResponse;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, LcoeditObject/DownloaderGrpc;->getDownloadStrokeMethod:Lio/grpc/MethodDescriptor;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getGetSignedDownloadUrlMethod()Lio/grpc/MethodDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "LcoeditObjectMessage/SignedDownloadUrlRequest;",
            "LcoeditObjectMessage/SignedDownloadUrlResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lio/grpc/stub/annotations/RpcMethod;
        fullMethodName = "coeditObject.Downloader/GetSignedDownloadUrl"
        methodType = .enum Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;
        requestType = LcoeditObjectMessage/SignedDownloadUrlRequest;
        responseType = LcoeditObjectMessage/SignedDownloadUrlResponse;
    .end annotation

    sget-object v0, LcoeditObject/DownloaderGrpc;->getGetSignedDownloadUrlMethod:Lio/grpc/MethodDescriptor;

    if-nez v0, :cond_1

    const-class v1, LcoeditObject/DownloaderGrpc;

    monitor-enter v1

    :try_start_0
    sget-object v0, LcoeditObject/DownloaderGrpc;->getGetSignedDownloadUrlMethod:Lio/grpc/MethodDescriptor;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    sget-object v2, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    const-string v2, "coeditObject.Downloader"

    const-string v3, "GetSignedDownloadUrl"

    invoke-static {v2, v3}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LcoeditObjectMessage/SignedDownloadUrlRequest;->getDefaultInstance()LcoeditObjectMessage/SignedDownloadUrlRequest;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LcoeditObjectMessage/SignedDownloadUrlResponse;->getDefaultInstance()LcoeditObjectMessage/SignedDownloadUrlResponse;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, LcoeditObject/DownloaderGrpc;->getGetSignedDownloadUrlMethod:Lio/grpc/MethodDescriptor;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getServiceDescriptor()Lio/grpc/ServiceDescriptor;
    .locals 3

    sget-object v0, LcoeditObject/DownloaderGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    if-nez v0, :cond_1

    const-class v1, LcoeditObject/DownloaderGrpc;

    monitor-enter v1

    :try_start_0
    sget-object v0, LcoeditObject/DownloaderGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    if-nez v0, :cond_0

    const-string v0, "coeditObject.Downloader"

    invoke-static {v0}, Lio/grpc/ServiceDescriptor;->newBuilder(Ljava/lang/String;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LcoeditObject/DownloaderGrpc;->getGetSignedDownloadUrlMethod()Lio/grpc/MethodDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LcoeditObject/DownloaderGrpc;->getDownloadStrokeMethod()Lio/grpc/MethodDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServiceDescriptor$Builder;->build()Lio/grpc/ServiceDescriptor;

    move-result-object v0

    sput-object v0, LcoeditObject/DownloaderGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static newBlockingStub(Lio/grpc/Channel;)LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;
    .locals 1

    new-instance v0, LcoeditObject/DownloaderGrpc$2;

    invoke-direct {v0}, LcoeditObject/DownloaderGrpc$2;-><init>()V

    invoke-static {v0, p0}, Lio/grpc/stub/AbstractBlockingStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object p0

    check-cast p0, LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;

    return-object p0
.end method

.method public static newFutureStub(Lio/grpc/Channel;)LcoeditObject/DownloaderGrpc$DownloaderFutureStub;
    .locals 1

    new-instance v0, LcoeditObject/DownloaderGrpc$3;

    invoke-direct {v0}, LcoeditObject/DownloaderGrpc$3;-><init>()V

    invoke-static {v0, p0}, Lio/grpc/stub/AbstractFutureStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object p0

    check-cast p0, LcoeditObject/DownloaderGrpc$DownloaderFutureStub;

    return-object p0
.end method

.method public static newStub(Lio/grpc/Channel;)LcoeditObject/DownloaderGrpc$DownloaderStub;
    .locals 1

    new-instance v0, LcoeditObject/DownloaderGrpc$1;

    invoke-direct {v0}, LcoeditObject/DownloaderGrpc$1;-><init>()V

    invoke-static {v0, p0}, Lio/grpc/stub/AbstractAsyncStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object p0

    check-cast p0, LcoeditObject/DownloaderGrpc$DownloaderStub;

    return-object p0
.end method
