.class public final LnoteSnap/UploaderGrpc$UploaderFutureStub;
.super Lio/grpc/stub/AbstractFutureStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LnoteSnap/UploaderGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UploaderFutureStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/stub/AbstractFutureStub<",
        "LnoteSnap/UploaderGrpc$UploaderFutureStub;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/stub/AbstractFutureStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;LnoteSnap/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LnoteSnap/UploaderGrpc$UploaderFutureStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 0

    invoke-virtual {p0, p1, p2}, LnoteSnap/UploaderGrpc$UploaderFutureStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LnoteSnap/UploaderGrpc$UploaderFutureStub;

    move-result-object p1

    return-object p1
.end method

.method public build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LnoteSnap/UploaderGrpc$UploaderFutureStub;
    .locals 1

    new-instance v0, LnoteSnap/UploaderGrpc$UploaderFutureStub;

    invoke-direct {v0, p1, p2}, LnoteSnap/UploaderGrpc$UploaderFutureStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-object v0
.end method
