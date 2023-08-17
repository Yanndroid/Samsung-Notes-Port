.class public final LcoeditCore/CatcherGrpc$CatcherFutureStub;
.super Lio/grpc/stub/AbstractFutureStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCore/CatcherGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CatcherFutureStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/stub/AbstractFutureStub<",
        "LcoeditCore/CatcherGrpc$CatcherFutureStub;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/stub/AbstractFutureStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;LcoeditCore/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCore/CatcherGrpc$CatcherFutureStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method


# virtual methods
.method public build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LcoeditCore/CatcherGrpc$CatcherFutureStub;
    .locals 1

    new-instance v0, LcoeditCore/CatcherGrpc$CatcherFutureStub;

    invoke-direct {v0, p1, p2}, LcoeditCore/CatcherGrpc$CatcherFutureStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-object v0
.end method

.method public bridge synthetic build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 0

    invoke-virtual {p0, p1, p2}, LcoeditCore/CatcherGrpc$CatcherFutureStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LcoeditCore/CatcherGrpc$CatcherFutureStub;

    move-result-object p1

    return-object p1
.end method
