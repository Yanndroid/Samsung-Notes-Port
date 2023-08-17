.class LnoteSnap/DownloaderGrpc$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/stub/AbstractStub$StubFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LnoteSnap/DownloaderGrpc;->newBlockingStub(Lio/grpc/Channel;)LnoteSnap/DownloaderGrpc$DownloaderBlockingStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/stub/AbstractStub$StubFactory<",
        "LnoteSnap/DownloaderGrpc$DownloaderBlockingStub;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic newStub(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 0

    invoke-virtual {p0, p1, p2}, LnoteSnap/DownloaderGrpc$2;->newStub(Lio/grpc/Channel;Lio/grpc/CallOptions;)LnoteSnap/DownloaderGrpc$DownloaderBlockingStub;

    move-result-object p1

    return-object p1
.end method

.method public newStub(Lio/grpc/Channel;Lio/grpc/CallOptions;)LnoteSnap/DownloaderGrpc$DownloaderBlockingStub;
    .locals 2

    new-instance v0, LnoteSnap/DownloaderGrpc$DownloaderBlockingStub;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, LnoteSnap/DownloaderGrpc$DownloaderBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;LnoteSnap/a;)V

    return-object v0
.end method
