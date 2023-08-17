.class public final LnoteSnap/DownloaderGrpc$DownloaderStub;
.super Lio/grpc/stub/AbstractAsyncStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LnoteSnap/DownloaderGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloaderStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/stub/AbstractAsyncStub<",
        "LnoteSnap/DownloaderGrpc$DownloaderStub;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/stub/AbstractAsyncStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;LnoteSnap/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LnoteSnap/DownloaderGrpc$DownloaderStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 0

    invoke-virtual {p0, p1, p2}, LnoteSnap/DownloaderGrpc$DownloaderStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LnoteSnap/DownloaderGrpc$DownloaderStub;

    move-result-object p1

    return-object p1
.end method

.method public build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LnoteSnap/DownloaderGrpc$DownloaderStub;
    .locals 1

    new-instance v0, LnoteSnap/DownloaderGrpc$DownloaderStub;

    invoke-direct {v0, p1, p2}, LnoteSnap/DownloaderGrpc$DownloaderStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-object v0
.end method

.method public downloadNote(LnoteSnapMessage/DownloadRequest;Lio/grpc/stub/StreamObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LnoteSnapMessage/DownloadRequest;",
            "Lio/grpc/stub/StreamObserver<",
            "LnoteSnapMessage/DownloadResponse;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/stub/AbstractStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, LnoteSnap/DownloaderGrpc;->getDownloadNoteMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/stub/AbstractStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lio/grpc/stub/ClientCalls;->asyncServerStreamingCall(Lio/grpc/ClientCall;Ljava/lang/Object;Lio/grpc/stub/StreamObserver;)V

    return-void
.end method
