.class public final LnoteSnap/UploaderGrpc$UploaderStub;
.super Lio/grpc/stub/AbstractAsyncStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LnoteSnap/UploaderGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UploaderStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/stub/AbstractAsyncStub<",
        "LnoteSnap/UploaderGrpc$UploaderStub;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/stub/AbstractAsyncStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;LnoteSnap/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LnoteSnap/UploaderGrpc$UploaderStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 0

    invoke-virtual {p0, p1, p2}, LnoteSnap/UploaderGrpc$UploaderStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LnoteSnap/UploaderGrpc$UploaderStub;

    move-result-object p1

    return-object p1
.end method

.method public build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LnoteSnap/UploaderGrpc$UploaderStub;
    .locals 1

    new-instance v0, LnoteSnap/UploaderGrpc$UploaderStub;

    invoke-direct {v0, p1, p2}, LnoteSnap/UploaderGrpc$UploaderStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-object v0
.end method

.method public uploadNote(Lio/grpc/stub/StreamObserver;)Lio/grpc/stub/StreamObserver;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/stub/StreamObserver<",
            "LnoteSnapMessage/UploadResponse;",
            ">;)",
            "Lio/grpc/stub/StreamObserver<",
            "LnoteSnapMessage/UploadRequest;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/stub/AbstractStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, LnoteSnap/UploaderGrpc;->getUploadNoteMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/stub/AbstractStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/stub/ClientCalls;->asyncClientStreamingCall(Lio/grpc/ClientCall;Lio/grpc/stub/StreamObserver;)Lio/grpc/stub/StreamObserver;

    move-result-object p1

    return-object p1
.end method
