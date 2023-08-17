.class public final LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterBlockingStub;
.super Lio/grpc/stub/AbstractBlockingStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditObjectStg/ObjectWorkspaceDeleterGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectWorkspaceDeleterBlockingStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/stub/AbstractBlockingStub<",
        "LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterBlockingStub;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/stub/AbstractBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;LcoeditObjectStg/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method


# virtual methods
.method public build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterBlockingStub;
    .locals 1

    new-instance v0, LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterBlockingStub;

    invoke-direct {v0, p1, p2}, LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-object v0
.end method

.method public bridge synthetic build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 0

    invoke-virtual {p0, p1, p2}, LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterBlockingStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterBlockingStub;

    move-result-object p1

    return-object p1
.end method

.method public deleteWorkspace(LcoeditObjectStg/DeleteRequest;)LcoeditObjectStg/DeleteResponse;
    .locals 3

    invoke-virtual {p0}, Lio/grpc/stub/AbstractStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, LcoeditObjectStg/ObjectWorkspaceDeleterGrpc;->getDeleteWorkspaceMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/stub/AbstractStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingUnaryCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LcoeditObjectStg/DeleteResponse;

    return-object p1
.end method
