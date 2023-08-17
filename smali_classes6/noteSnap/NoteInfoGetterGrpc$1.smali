.class LnoteSnap/NoteInfoGetterGrpc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/stub/AbstractStub$StubFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LnoteSnap/NoteInfoGetterGrpc;->newStub(Lio/grpc/Channel;)LnoteSnap/NoteInfoGetterGrpc$NoteInfoGetterStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/stub/AbstractStub$StubFactory<",
        "LnoteSnap/NoteInfoGetterGrpc$NoteInfoGetterStub;",
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
.method public bridge synthetic newStub(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 0

    invoke-virtual {p0, p1, p2}, LnoteSnap/NoteInfoGetterGrpc$1;->newStub(Lio/grpc/Channel;Lio/grpc/CallOptions;)LnoteSnap/NoteInfoGetterGrpc$NoteInfoGetterStub;

    move-result-object p1

    return-object p1
.end method

.method public newStub(Lio/grpc/Channel;Lio/grpc/CallOptions;)LnoteSnap/NoteInfoGetterGrpc$NoteInfoGetterStub;
    .locals 2

    new-instance v0, LnoteSnap/NoteInfoGetterGrpc$NoteInfoGetterStub;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, LnoteSnap/NoteInfoGetterGrpc$NoteInfoGetterStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;LnoteSnap/f;)V

    return-object v0
.end method
