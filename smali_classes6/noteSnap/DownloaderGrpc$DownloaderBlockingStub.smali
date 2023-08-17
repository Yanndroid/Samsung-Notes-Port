.class public final LnoteSnap/DownloaderGrpc$DownloaderBlockingStub;
.super Lio/grpc/stub/AbstractBlockingStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LnoteSnap/DownloaderGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloaderBlockingStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/stub/AbstractBlockingStub<",
        "LnoteSnap/DownloaderGrpc$DownloaderBlockingStub;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/stub/AbstractBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;LnoteSnap/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LnoteSnap/DownloaderGrpc$DownloaderBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 0

    invoke-virtual {p0, p1, p2}, LnoteSnap/DownloaderGrpc$DownloaderBlockingStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LnoteSnap/DownloaderGrpc$DownloaderBlockingStub;

    move-result-object p1

    return-object p1
.end method

.method public build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LnoteSnap/DownloaderGrpc$DownloaderBlockingStub;
    .locals 1

    new-instance v0, LnoteSnap/DownloaderGrpc$DownloaderBlockingStub;

    invoke-direct {v0, p1, p2}, LnoteSnap/DownloaderGrpc$DownloaderBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-object v0
.end method

.method public downloadNote(LnoteSnapMessage/DownloadRequest;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LnoteSnapMessage/DownloadRequest;",
            ")",
            "Ljava/util/Iterator<",
            "LnoteSnapMessage/DownloadResponse;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/stub/AbstractStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, LnoteSnap/DownloaderGrpc;->getDownloadNoteMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/stub/AbstractStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingServerStreamingCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
