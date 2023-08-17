.class final LcoeditObject/DownloaderGrpc$MethodHandlers;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/stub/ServerCalls$UnaryMethod;
.implements Lio/grpc/stub/ServerCalls$ServerStreamingMethod;
.implements Lio/grpc/stub/ServerCalls$ClientStreamingMethod;
.implements Lio/grpc/stub/ServerCalls$BidiStreamingMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditObject/DownloaderGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodHandlers"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Req:",
        "Ljava/lang/Object;",
        "Resp:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/stub/ServerCalls$UnaryMethod<",
        "TReq;TResp;>;",
        "Lio/grpc/stub/ServerCalls$ServerStreamingMethod<",
        "TReq;TResp;>;",
        "Lio/grpc/stub/ServerCalls$ClientStreamingMethod<",
        "TReq;TResp;>;",
        "Lio/grpc/stub/ServerCalls$BidiStreamingMethod<",
        "TReq;TResp;>;"
    }
.end annotation


# instance fields
.field private final methodId:I

.field private final serviceImpl:LcoeditObject/DownloaderGrpc$DownloaderImplBase;


# direct methods
.method public constructor <init>(LcoeditObject/DownloaderGrpc$DownloaderImplBase;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LcoeditObject/DownloaderGrpc$MethodHandlers;->serviceImpl:LcoeditObject/DownloaderGrpc$DownloaderImplBase;

    iput p2, p0, LcoeditObject/DownloaderGrpc$MethodHandlers;->methodId:I

    return-void
.end method


# virtual methods
.method public invoke(Lio/grpc/stub/StreamObserver;)Lio/grpc/stub/StreamObserver;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/stub/StreamObserver<",
            "TResp;>;)",
            "Lio/grpc/stub/StreamObserver<",
            "TReq;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public invoke(Ljava/lang/Object;Lio/grpc/stub/StreamObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReq;",
            "Lio/grpc/stub/StreamObserver<",
            "TResp;>;)V"
        }
    .end annotation

    iget v0, p0, LcoeditObject/DownloaderGrpc$MethodHandlers;->methodId:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LcoeditObject/DownloaderGrpc$MethodHandlers;->serviceImpl:LcoeditObject/DownloaderGrpc$DownloaderImplBase;

    check-cast p1, LcoeditObjectMessage/DownloadStrokeRequest;

    invoke-virtual {v0, p1, p2}, LcoeditObject/DownloaderGrpc$DownloaderImplBase;->downloadStroke(LcoeditObjectMessage/DownloadStrokeRequest;Lio/grpc/stub/StreamObserver;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    iget-object v0, p0, LcoeditObject/DownloaderGrpc$MethodHandlers;->serviceImpl:LcoeditObject/DownloaderGrpc$DownloaderImplBase;

    check-cast p1, LcoeditObjectMessage/SignedDownloadUrlRequest;

    invoke-virtual {v0, p1, p2}, LcoeditObject/DownloaderGrpc$DownloaderImplBase;->getSignedDownloadUrl(LcoeditObjectMessage/SignedDownloadUrlRequest;Lio/grpc/stub/StreamObserver;)V

    :goto_0
    return-void
.end method
