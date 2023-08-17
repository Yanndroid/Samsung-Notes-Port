.class public final LnoteSnap/UploaderGrpc$UploaderBlockingStub;
.super Lio/grpc/stub/AbstractBlockingStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LnoteSnap/UploaderGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UploaderBlockingStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/stub/AbstractBlockingStub<",
        "LnoteSnap/UploaderGrpc$UploaderBlockingStub;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/stub/AbstractBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;LnoteSnap/g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LnoteSnap/UploaderGrpc$UploaderBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 0

    invoke-virtual {p0, p1, p2}, LnoteSnap/UploaderGrpc$UploaderBlockingStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LnoteSnap/UploaderGrpc$UploaderBlockingStub;

    move-result-object p1

    return-object p1
.end method

.method public build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LnoteSnap/UploaderGrpc$UploaderBlockingStub;
    .locals 1

    new-instance v0, LnoteSnap/UploaderGrpc$UploaderBlockingStub;

    invoke-direct {v0, p1, p2}, LnoteSnap/UploaderGrpc$UploaderBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-object v0
.end method
