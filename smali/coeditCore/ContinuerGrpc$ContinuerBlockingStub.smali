.class public final LcoeditCore/ContinuerGrpc$ContinuerBlockingStub;
.super Lio/grpc/stub/AbstractBlockingStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCore/ContinuerGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContinuerBlockingStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/stub/AbstractBlockingStub<",
        "LcoeditCore/ContinuerGrpc$ContinuerBlockingStub;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/stub/AbstractBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;LcoeditCore/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditCore/ContinuerGrpc$ContinuerBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method


# virtual methods
.method public build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LcoeditCore/ContinuerGrpc$ContinuerBlockingStub;
    .locals 1

    new-instance v0, LcoeditCore/ContinuerGrpc$ContinuerBlockingStub;

    invoke-direct {v0, p1, p2}, LcoeditCore/ContinuerGrpc$ContinuerBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-object v0
.end method

.method public bridge synthetic build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 0

    invoke-virtual {p0, p1, p2}, LcoeditCore/ContinuerGrpc$ContinuerBlockingStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LcoeditCore/ContinuerGrpc$ContinuerBlockingStub;

    move-result-object p1

    return-object p1
.end method
