.class public final LcoeditObject/UploaderGrpc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LcoeditObject/UploaderGrpc$MethodHandlers;,
        LcoeditObject/UploaderGrpc$UploaderFutureStub;,
        LcoeditObject/UploaderGrpc$UploaderBlockingStub;,
        LcoeditObject/UploaderGrpc$UploaderStub;,
        LcoeditObject/UploaderGrpc$UploaderImplBase;
    }
.end annotation

.annotation build Lio/grpc/stub/annotations/GrpcGenerated;
.end annotation


# static fields
.field private static final METHODID_GET_OBJECT_UPLOAD_URL:I = 0x0

.field private static final METHODID_UPLOAD_STROKE:I = 0x1

.field public static final SERVICE_NAME:Ljava/lang/String; = "coeditObject.Uploader"

.field private static volatile getGetObjectUploadUrlMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "LcoeditObjectMessage/ObjUploadUrlRequest;",
            "LcoeditObjectMessage/ObjUploadUrlResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getUploadStrokeMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "LcoeditObjectMessage/UploadStrokeRequest;",
            "LcoeditObjectMessage/UploadStrokeResponse;",
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

.method public static getGetObjectUploadUrlMethod()Lio/grpc/MethodDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "LcoeditObjectMessage/ObjUploadUrlRequest;",
            "LcoeditObjectMessage/ObjUploadUrlResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lio/grpc/stub/annotations/RpcMethod;
        fullMethodName = "coeditObject.Uploader/GetObjectUploadUrl"
        methodType = .enum Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;
        requestType = LcoeditObjectMessage/ObjUploadUrlRequest;
        responseType = LcoeditObjectMessage/ObjUploadUrlResponse;
    .end annotation

    sget-object v0, LcoeditObject/UploaderGrpc;->getGetObjectUploadUrlMethod:Lio/grpc/MethodDescriptor;

    if-nez v0, :cond_1

    const-class v1, LcoeditObject/UploaderGrpc;

    monitor-enter v1

    :try_start_0
    sget-object v0, LcoeditObject/UploaderGrpc;->getGetObjectUploadUrlMethod:Lio/grpc/MethodDescriptor;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    sget-object v2, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    const-string v2, "coeditObject.Uploader"

    const-string v3, "GetObjectUploadUrl"

    invoke-static {v2, v3}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LcoeditObjectMessage/ObjUploadUrlRequest;->getDefaultInstance()LcoeditObjectMessage/ObjUploadUrlRequest;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LcoeditObjectMessage/ObjUploadUrlResponse;->getDefaultInstance()LcoeditObjectMessage/ObjUploadUrlResponse;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, LcoeditObject/UploaderGrpc;->getGetObjectUploadUrlMethod:Lio/grpc/MethodDescriptor;

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

    sget-object v0, LcoeditObject/UploaderGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    if-nez v0, :cond_1

    const-class v1, LcoeditObject/UploaderGrpc;

    monitor-enter v1

    :try_start_0
    sget-object v0, LcoeditObject/UploaderGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    if-nez v0, :cond_0

    const-string v0, "coeditObject.Uploader"

    invoke-static {v0}, Lio/grpc/ServiceDescriptor;->newBuilder(Ljava/lang/String;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LcoeditObject/UploaderGrpc;->getGetObjectUploadUrlMethod()Lio/grpc/MethodDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LcoeditObject/UploaderGrpc;->getUploadStrokeMethod()Lio/grpc/MethodDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServiceDescriptor$Builder;->build()Lio/grpc/ServiceDescriptor;

    move-result-object v0

    sput-object v0, LcoeditObject/UploaderGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

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

.method public static getUploadStrokeMethod()Lio/grpc/MethodDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "LcoeditObjectMessage/UploadStrokeRequest;",
            "LcoeditObjectMessage/UploadStrokeResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lio/grpc/stub/annotations/RpcMethod;
        fullMethodName = "coeditObject.Uploader/UploadStroke"
        methodType = .enum Lio/grpc/MethodDescriptor$MethodType;->CLIENT_STREAMING:Lio/grpc/MethodDescriptor$MethodType;
        requestType = LcoeditObjectMessage/UploadStrokeRequest;
        responseType = LcoeditObjectMessage/UploadStrokeResponse;
    .end annotation

    sget-object v0, LcoeditObject/UploaderGrpc;->getUploadStrokeMethod:Lio/grpc/MethodDescriptor;

    if-nez v0, :cond_1

    const-class v1, LcoeditObject/UploaderGrpc;

    monitor-enter v1

    :try_start_0
    sget-object v0, LcoeditObject/UploaderGrpc;->getUploadStrokeMethod:Lio/grpc/MethodDescriptor;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    sget-object v2, Lio/grpc/MethodDescriptor$MethodType;->CLIENT_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    const-string v2, "coeditObject.Uploader"

    const-string v3, "UploadStroke"

    invoke-static {v2, v3}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LcoeditObjectMessage/UploadStrokeRequest;->getDefaultInstance()LcoeditObjectMessage/UploadStrokeRequest;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LcoeditObjectMessage/UploadStrokeResponse;->getDefaultInstance()LcoeditObjectMessage/UploadStrokeResponse;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, LcoeditObject/UploaderGrpc;->getUploadStrokeMethod:Lio/grpc/MethodDescriptor;

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

.method public static newBlockingStub(Lio/grpc/Channel;)LcoeditObject/UploaderGrpc$UploaderBlockingStub;
    .locals 1

    new-instance v0, LcoeditObject/UploaderGrpc$2;

    invoke-direct {v0}, LcoeditObject/UploaderGrpc$2;-><init>()V

    invoke-static {v0, p0}, Lio/grpc/stub/AbstractBlockingStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object p0

    check-cast p0, LcoeditObject/UploaderGrpc$UploaderBlockingStub;

    return-object p0
.end method

.method public static newFutureStub(Lio/grpc/Channel;)LcoeditObject/UploaderGrpc$UploaderFutureStub;
    .locals 1

    new-instance v0, LcoeditObject/UploaderGrpc$3;

    invoke-direct {v0}, LcoeditObject/UploaderGrpc$3;-><init>()V

    invoke-static {v0, p0}, Lio/grpc/stub/AbstractFutureStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object p0

    check-cast p0, LcoeditObject/UploaderGrpc$UploaderFutureStub;

    return-object p0
.end method

.method public static newStub(Lio/grpc/Channel;)LcoeditObject/UploaderGrpc$UploaderStub;
    .locals 1

    new-instance v0, LcoeditObject/UploaderGrpc$1;

    invoke-direct {v0}, LcoeditObject/UploaderGrpc$1;-><init>()V

    invoke-static {v0, p0}, Lio/grpc/stub/AbstractAsyncStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object p0

    check-cast p0, LcoeditObject/UploaderGrpc$UploaderStub;

    return-object p0
.end method
