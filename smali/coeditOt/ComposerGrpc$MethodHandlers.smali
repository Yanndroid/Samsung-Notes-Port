.class final LcoeditOt/ComposerGrpc$MethodHandlers;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/stub/ServerCalls$UnaryMethod;
.implements Lio/grpc/stub/ServerCalls$ServerStreamingMethod;
.implements Lio/grpc/stub/ServerCalls$ClientStreamingMethod;
.implements Lio/grpc/stub/ServerCalls$BidiStreamingMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOt/ComposerGrpc;
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

.field private final serviceImpl:LcoeditOt/ComposerGrpc$ComposerImplBase;


# direct methods
.method public constructor <init>(LcoeditOt/ComposerGrpc$ComposerImplBase;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LcoeditOt/ComposerGrpc$MethodHandlers;->serviceImpl:LcoeditOt/ComposerGrpc$ComposerImplBase;

    iput p2, p0, LcoeditOt/ComposerGrpc$MethodHandlers;->methodId:I

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReq;",
            "Lio/grpc/stub/StreamObserver<",
            "TResp;>;)V"
        }
    .end annotation

    iget v0, p0, LcoeditOt/ComposerGrpc$MethodHandlers;->methodId:I

    if-nez v0, :cond_0

    iget-object v0, p0, LcoeditOt/ComposerGrpc$MethodHandlers;->serviceImpl:LcoeditOt/ComposerGrpc$ComposerImplBase;

    check-cast p1, LcoeditOtMessage/ComposeRequest;

    invoke-virtual {v0, p1, p2}, LcoeditOt/ComposerGrpc$ComposerImplBase;->compose(LcoeditOtMessage/ComposeRequest;Lio/grpc/stub/StreamObserver;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
