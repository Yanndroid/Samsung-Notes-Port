.class public final LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterStub;
.super Lio/grpc/stub/AbstractAsyncStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditObjectStg/ObjectWorkspaceDeleterGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectWorkspaceDeleterStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/stub/AbstractAsyncStub<",
        "LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterStub;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/stub/AbstractAsyncStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;LcoeditObjectStg/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method


# virtual methods
.method public build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterStub;
    .locals 1

    new-instance v0, LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterStub;

    invoke-direct {v0, p1, p2}, LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-object v0
.end method

.method public bridge synthetic build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 0

    invoke-virtual {p0, p1, p2}, LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterStub;

    move-result-object p1

    return-object p1
.end method

.method public deleteWorkspace(LcoeditObjectStg/DeleteRequest;Lio/grpc/stub/StreamObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LcoeditObjectStg/DeleteRequest;",
            "Lio/grpc/stub/StreamObserver<",
            "LcoeditObjectStg/DeleteResponse;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lio/grpc/stub/AbstractStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, LcoeditObjectStg/ObjectWorkspaceDeleterGrpc;->getDeleteWorkspaceMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/stub/AbstractStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lio/grpc/stub/ClientCalls;->asyncUnaryCall(Lio/grpc/ClientCall;Ljava/lang/Object;Lio/grpc/stub/StreamObserver;)V

    return-void
.end method
