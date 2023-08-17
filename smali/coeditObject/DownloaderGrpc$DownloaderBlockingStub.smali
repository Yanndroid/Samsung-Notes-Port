.class public final LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;
.super Lio/grpc/stub/AbstractBlockingStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditObject/DownloaderGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloaderBlockingStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/stub/AbstractBlockingStub<",
        "LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/stub/AbstractBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;LcoeditObject/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method


# virtual methods
.method public build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;
    .locals 1

    new-instance v0, LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;

    invoke-direct {v0, p1, p2}, LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-object v0
.end method

.method public bridge synthetic build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 0

    invoke-virtual {p0, p1, p2}, LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LcoeditObject/DownloaderGrpc$DownloaderBlockingStub;

    move-result-object p1

    return-object p1
.end method

.method public downloadStroke(LcoeditObjectMessage/DownloadStrokeRequest;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LcoeditObjectMessage/DownloadStrokeRequest;",
            ")",
            "Ljava/util/Iterator<",
            "LcoeditObjectMessage/DownloadStrokeResponse;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/stub/AbstractStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, LcoeditObject/DownloaderGrpc;->getDownloadStrokeMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/stub/AbstractStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingServerStreamingCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getSignedDownloadUrl(LcoeditObjectMessage/SignedDownloadUrlRequest;)LcoeditObjectMessage/SignedDownloadUrlResponse;
    .locals 3

    invoke-virtual {p0}, Lio/grpc/stub/AbstractStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, LcoeditObject/DownloaderGrpc;->getGetSignedDownloadUrlMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/stub/AbstractStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingUnaryCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/SignedDownloadUrlResponse;

    return-object p1
.end method
