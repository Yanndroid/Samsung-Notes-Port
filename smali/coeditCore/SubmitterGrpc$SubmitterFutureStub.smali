.class public final LcoeditCore/SubmitterGrpc$SubmitterFutureStub;
.super Lio/grpc/stub/AbstractFutureStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCore/SubmitterGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubmitterFutureStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/stub/AbstractFutureStub<",
        "LcoeditCore/SubmitterGrpc$SubmitterFutureStub;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/stub/AbstractFutureStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;LcoeditCore/k;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCore/SubmitterGrpc$SubmitterFutureStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method


# virtual methods
.method public build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LcoeditCore/SubmitterGrpc$SubmitterFutureStub;
    .locals 1

    new-instance v0, LcoeditCore/SubmitterGrpc$SubmitterFutureStub;

    invoke-direct {v0, p1, p2}, LcoeditCore/SubmitterGrpc$SubmitterFutureStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-object v0
.end method

.method public bridge synthetic build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 0

    invoke-virtual {p0, p1, p2}, LcoeditCore/SubmitterGrpc$SubmitterFutureStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LcoeditCore/SubmitterGrpc$SubmitterFutureStub;

    move-result-object p1

    return-object p1
.end method

.method public submit(LcoeditCoreMessage/SubmitRequest;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LcoeditCoreMessage/SubmitRequest;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "LcoeditCoreMessage/SubmitResponse;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/stub/AbstractStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, LcoeditCore/SubmitterGrpc;->getSubmitMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/stub/AbstractStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/stub/ClientCalls;->futureUnaryCall(Lio/grpc/ClientCall;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
