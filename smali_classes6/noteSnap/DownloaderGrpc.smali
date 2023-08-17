.class public final LnoteSnap/DownloaderGrpc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LnoteSnap/DownloaderGrpc$MethodHandlers;,
        LnoteSnap/DownloaderGrpc$DownloaderFutureStub;,
        LnoteSnap/DownloaderGrpc$DownloaderBlockingStub;,
        LnoteSnap/DownloaderGrpc$DownloaderStub;,
        LnoteSnap/DownloaderGrpc$DownloaderImplBase;
    }
.end annotation

.annotation build Lio/grpc/stub/annotations/GrpcGenerated;
.end annotation


# static fields
.field private static final METHODID_DOWNLOAD_NOTE:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "noteSnap.Downloader"

.field private static volatile getDownloadNoteMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "LnoteSnapMessage/DownloadRequest;",
            "LnoteSnapMessage/DownloadResponse;",
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

.method public static getDownloadNoteMethod()Lio/grpc/MethodDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "LnoteSnapMessage/DownloadRequest;",
            "LnoteSnapMessage/DownloadResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lio/grpc/stub/annotations/RpcMethod;
        fullMethodName = "noteSnap.Downloader/DownloadNote"
        methodType = .enum Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;
        requestType = LnoteSnapMessage/DownloadRequest;
        responseType = LnoteSnapMessage/DownloadResponse;
    .end annotation

    sget-object v0, LnoteSnap/DownloaderGrpc;->getDownloadNoteMethod:Lio/grpc/MethodDescriptor;

    if-nez v0, :cond_1

    const-class v1, LnoteSnap/DownloaderGrpc;

    monitor-enter v1

    :try_start_0
    sget-object v0, LnoteSnap/DownloaderGrpc;->getDownloadNoteMethod:Lio/grpc/MethodDescriptor;

    if-nez v0, :cond_0

    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    sget-object v2, Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    const-string v2, "noteSnap.Downloader"

    const-string v3, "DownloadNote"

    invoke-static {v2, v3}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LnoteSnapMessage/DownloadRequest;->getDefaultInstance()LnoteSnapMessage/DownloadRequest;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LnoteSnapMessage/DownloadResponse;->getDefaultInstance()LnoteSnapMessage/DownloadResponse;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, LnoteSnap/DownloaderGrpc;->getDownloadNoteMethod:Lio/grpc/MethodDescriptor;

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

    sget-object v0, LnoteSnap/DownloaderGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    if-nez v0, :cond_1

    const-class v1, LnoteSnap/DownloaderGrpc;

    monitor-enter v1

    :try_start_0
    sget-object v0, LnoteSnap/DownloaderGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    if-nez v0, :cond_0

    const-string v0, "noteSnap.Downloader"

    invoke-static {v0}, Lio/grpc/ServiceDescriptor;->newBuilder(Ljava/lang/String;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v0

    invoke-static {}, LnoteSnap/DownloaderGrpc;->getDownloadNoteMethod()Lio/grpc/MethodDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServiceDescriptor$Builder;->build()Lio/grpc/ServiceDescriptor;

    move-result-object v0

    sput-object v0, LnoteSnap/DownloaderGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

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

.method public static newBlockingStub(Lio/grpc/Channel;)LnoteSnap/DownloaderGrpc$DownloaderBlockingStub;
    .locals 1

    new-instance v0, LnoteSnap/DownloaderGrpc$2;

    invoke-direct {v0}, LnoteSnap/DownloaderGrpc$2;-><init>()V

    invoke-static {v0, p0}, Lio/grpc/stub/AbstractBlockingStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object p0

    check-cast p0, LnoteSnap/DownloaderGrpc$DownloaderBlockingStub;

    return-object p0
.end method

.method public static newFutureStub(Lio/grpc/Channel;)LnoteSnap/DownloaderGrpc$DownloaderFutureStub;
    .locals 1

    new-instance v0, LnoteSnap/DownloaderGrpc$3;

    invoke-direct {v0}, LnoteSnap/DownloaderGrpc$3;-><init>()V

    invoke-static {v0, p0}, Lio/grpc/stub/AbstractFutureStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object p0

    check-cast p0, LnoteSnap/DownloaderGrpc$DownloaderFutureStub;

    return-object p0
.end method

.method public static newStub(Lio/grpc/Channel;)LnoteSnap/DownloaderGrpc$DownloaderStub;
    .locals 1

    new-instance v0, LnoteSnap/DownloaderGrpc$1;

    invoke-direct {v0}, LnoteSnap/DownloaderGrpc$1;-><init>()V

    invoke-static {v0, p0}, Lio/grpc/stub/AbstractAsyncStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object p0

    check-cast p0, LnoteSnap/DownloaderGrpc$DownloaderStub;

    return-object p0
.end method
