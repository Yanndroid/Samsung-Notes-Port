.class LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/stub/AbstractStub$StubFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LcoeditObjectStg/ObjectWorkspaceDeleterGrpc;->newFutureStub(Lio/grpc/Channel;)LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterFutureStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/stub/AbstractStub$StubFactory<",
        "LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterFutureStub;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newStub(Lio/grpc/Channel;Lio/grpc/CallOptions;)LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterFutureStub;
    .locals 2

    new-instance v0, LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterFutureStub;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterFutureStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;LcoeditObjectStg/d;)V

    return-object v0
.end method

.method public bridge synthetic newStub(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 0

    invoke-virtual {p0, p1, p2}, LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$3;->newStub(Lio/grpc/Channel;Lio/grpc/CallOptions;)LcoeditObjectStg/ObjectWorkspaceDeleterGrpc$ObjectWorkspaceDeleterFutureStub;

    move-result-object p1

    return-object p1
.end method
