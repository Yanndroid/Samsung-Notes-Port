.class public final LnoteSnap/UploaderGrpc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LnoteSnap/UploaderGrpc$MethodHandlers;,
        LnoteSnap/UploaderGrpc$UploaderFutureStub;,
        LnoteSnap/UploaderGrpc$UploaderBlockingStub;,
        LnoteSnap/UploaderGrpc$UploaderStub;,
        LnoteSnap/UploaderGrpc$UploaderImplBase;
    }
.end annotation

.annotation build Lio/grpc/stub/annotations/GrpcGenerated;
.end annotation


# static fields
.field private static final METHODID_UPLOAD_NOTE:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "noteSnap.Uploader"

.field private static volatile getUploadNoteMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "LnoteSnapMessage/UploadRequest;",
            "LnoteSnapMessage/UploadResponse;",
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

.method public static getServiceDescriptor()Lio/grpc/ServiceDescriptor;
    .locals 3

    sget-object v0, LnoteSnap/UploaderGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    if-nez v0, :cond_1

    const-class v1, LnoteSnap/UploaderGrpc;

    monitor-enter v1

    :try_start_0
    sget-object v0, LnoteSnap/UploaderGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    if-nez v0, :cond_0

    const-string v0, "noteSnap.Uploader"

    invoke-static {v0}, Lio/grpc/ServiceDescriptor;->newBuilder(Ljava/lang/String;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LnoteSnap/UploaderGrpc;->getUploadNoteMethod()Lio/grpc/MethodDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServiceDescriptor$Builder;->build()Lio/grpc/ServiceDescriptor;

    move-result-object v0

    sput-object v0, LnoteSnap/UploaderGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

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

.method public static getUploadNoteMethod()Lio/grpc/MethodDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "LnoteSnapMessage/UploadRequest;",
            "LnoteSnapMessage/UploadResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lio/grpc/stub/annotations/RpcMethod;
        fullMethodName = "noteSnap.Uploader/UploadNote"
        methodType = .enum Lio/grpc/MethodDescriptor$MethodType;->CLIENT_STREAMING:Lio/grpc/MethodDescriptor$MethodType;
        requestType = LnoteSnapMessage/UploadRequest;
        responseType = LnoteSnapMessage/UploadResponse;
    .end annotation

    sget-object v0, LnoteSnap/UploaderGrpc;->getUploadNoteMethod:Lio/grpc/MethodDescriptor;

    if-nez v0, :cond_1

    const-class v1, LnoteSnap/UploaderGrpc;

    monitor-enter v1

    :try_start_0
    sget-object v0, LnoteSnap/UploaderGrpc;->getUploadNoteMethod:Lio/grpc/MethodDescriptor;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    sget-object v2, Lio/grpc/MethodDescriptor$MethodType;->CLIENT_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    const-string v2, "noteSnap.Uploader"

    const-string v3, "UploadNote"

    invoke-static {v2, v3}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LnoteSnapMessage/UploadRequest;->getDefaultInstance()LnoteSnapMessage/UploadRequest;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LnoteSnapMessage/UploadResponse;->getDefaultInstance()LnoteSnapMessage/UploadResponse;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, LnoteSnap/UploaderGrpc;->getUploadNoteMethod:Lio/grpc/MethodDescriptor;

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

.method public static newBlockingStub(Lio/grpc/Channel;)LnoteSnap/UploaderGrpc$UploaderBlockingStub;
    .locals 1

    new-instance v0, LnoteSnap/UploaderGrpc$2;

    invoke-direct {v0}, LnoteSnap/UploaderGrpc$2;-><init>()V

    invoke-static {v0, p0}, Lio/grpc/stub/AbstractBlockingStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object p0

    check-cast p0, LnoteSnap/UploaderGrpc$UploaderBlockingStub;

    return-object p0
.end method

.method public static newFutureStub(Lio/grpc/Channel;)LnoteSnap/UploaderGrpc$UploaderFutureStub;
    .locals 1

    new-instance v0, LnoteSnap/UploaderGrpc$3;

    invoke-direct {v0}, LnoteSnap/UploaderGrpc$3;-><init>()V

    invoke-static {v0, p0}, Lio/grpc/stub/AbstractFutureStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object p0

    check-cast p0, LnoteSnap/UploaderGrpc$UploaderFutureStub;

    return-object p0
.end method

.method public static newStub(Lio/grpc/Channel;)LnoteSnap/UploaderGrpc$UploaderStub;
    .locals 1

    new-instance v0, LnoteSnap/UploaderGrpc$1;

    invoke-direct {v0}, LnoteSnap/UploaderGrpc$1;-><init>()V

    invoke-static {v0, p0}, Lio/grpc/stub/AbstractAsyncStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object p0

    check-cast p0, LnoteSnap/UploaderGrpc$UploaderStub;

    return-object p0
.end method
