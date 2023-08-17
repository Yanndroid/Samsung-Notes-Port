.class public final LnoteSnap/NoteInfoGetterGrpc$NoteInfoGetterBlockingStub;
.super Lio/grpc/stub/AbstractBlockingStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LnoteSnap/NoteInfoGetterGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoteInfoGetterBlockingStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/stub/AbstractBlockingStub<",
        "LnoteSnap/NoteInfoGetterGrpc$NoteInfoGetterBlockingStub;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lio/grpc/stub/AbstractBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;LnoteSnap/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LnoteSnap/NoteInfoGetterGrpc$NoteInfoGetterBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 0

    invoke-virtual {p0, p1, p2}, LnoteSnap/NoteInfoGetterGrpc$NoteInfoGetterBlockingStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LnoteSnap/NoteInfoGetterGrpc$NoteInfoGetterBlockingStub;

    move-result-object p1

    return-object p1
.end method

.method public build(Lio/grpc/Channel;Lio/grpc/CallOptions;)LnoteSnap/NoteInfoGetterGrpc$NoteInfoGetterBlockingStub;
    .locals 1

    new-instance v0, LnoteSnap/NoteInfoGetterGrpc$NoteInfoGetterBlockingStub;

    invoke-direct {v0, p1, p2}, LnoteSnap/NoteInfoGetterGrpc$NoteInfoGetterBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-object v0
.end method

.method public getLatestNoteInfo(LnoteSnapMessage/NoteInfoRequest;)LnoteSnapMessage/NoteInfoResponse;
    .locals 3

    invoke-virtual {p0}, Lio/grpc/stub/AbstractStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, LnoteSnap/NoteInfoGetterGrpc;->getGetLatestNoteInfoMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/stub/AbstractStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingUnaryCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LnoteSnapMessage/NoteInfoResponse;

    return-object p1
.end method
