.class public final LcoeditObject/UploaderGrpc$UploaderBlockingStub;
.super Lio/grpc/stub/AbstractBlockingStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditObject/UploaderGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UploaderBlockingStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/stub/AbstractBlockingStub<",
        "LcoeditObject/UploaderGrpc$UploaderBlockingStub;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/stub/AbstractBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;LcoeditObject/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditObject/UploaderGrpc$UploaderBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method


# virtual methods
.method public build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LcoeditObject/UploaderGrpc$UploaderBlockingStub;
    .locals 1

    new-instance v0, LcoeditObject/UploaderGrpc$UploaderBlockingStub;

    invoke-direct {v0, p1, p2}, LcoeditObject/UploaderGrpc$UploaderBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-object v0
.end method

.method public bridge synthetic build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 0

    invoke-virtual {p0, p1, p2}, LcoeditObject/UploaderGrpc$UploaderBlockingStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LcoeditObject/UploaderGrpc$UploaderBlockingStub;

    move-result-object p1

    return-object p1
.end method

.method public getObjectUploadUrl(LcoeditObjectMessage/ObjUploadUrlRequest;)LcoeditObjectMessage/ObjUploadUrlResponse;
    .locals 3

    invoke-virtual {p0}, Lio/grpc/stub/AbstractStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, LcoeditObject/UploaderGrpc;->getGetObjectUploadUrlMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/stub/AbstractStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingUnaryCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/ObjUploadUrlResponse;

    return-object p1
.end method
