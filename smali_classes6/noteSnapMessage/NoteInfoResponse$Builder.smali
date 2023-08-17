.class public final LnoteSnapMessage/NoteInfoResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LnoteSnapMessage/NoteInfoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LnoteSnapMessage/NoteInfoResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LnoteSnapMessage/NoteInfoResponse;",
        "LnoteSnapMessage/NoteInfoResponse$Builder;",
        ">;",
        "LnoteSnapMessage/NoteInfoResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LnoteSnapMessage/NoteInfoResponse;->k()LnoteSnapMessage/NoteInfoResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LnoteSnapMessage/f;)V
    .locals 0

    invoke-direct {p0}, LnoteSnapMessage/NoteInfoResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCheckpoint()LnoteSnapMessage/NoteInfoResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0}, LnoteSnapMessage/NoteInfoResponse;->a(LnoteSnapMessage/NoteInfoResponse;)V

    return-object p0
.end method

.method public clearCommitId()LnoteSnapMessage/NoteInfoResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0}, LnoteSnapMessage/NoteInfoResponse;->b(LnoteSnapMessage/NoteInfoResponse;)V

    return-object p0
.end method

.method public clearModifiedtime()LnoteSnapMessage/NoteInfoResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0}, LnoteSnapMessage/NoteInfoResponse;->c(LnoteSnapMessage/NoteInfoResponse;)V

    return-object p0
.end method

.method public clearResponseResult()LnoteSnapMessage/NoteInfoResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0}, LnoteSnapMessage/NoteInfoResponse;->d(LnoteSnapMessage/NoteInfoResponse;)V

    return-object p0
.end method

.method public getCheckpoint()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/NoteInfoResponse;

    invoke-virtual {v0}, LnoteSnapMessage/NoteInfoResponse;->getCheckpoint()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCommitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/NoteInfoResponse;

    invoke-virtual {v0}, LnoteSnapMessage/NoteInfoResponse;->getCommitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCommitIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/NoteInfoResponse;

    invoke-virtual {v0}, LnoteSnapMessage/NoteInfoResponse;->getCommitIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getModifiedtime()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/NoteInfoResponse;

    invoke-virtual {v0}, LnoteSnapMessage/NoteInfoResponse;->getModifiedtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResponseResult()LnoteSnapMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/NoteInfoResponse;

    invoke-virtual {v0}, LnoteSnapMessage/NoteInfoResponse;->getResponseResult()LnoteSnapMessage/ResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/NoteInfoResponse;

    invoke-virtual {v0}, LnoteSnapMessage/NoteInfoResponse;->hasResponseResult()Z

    move-result v0

    return v0
.end method

.method public mergeResponseResult(LnoteSnapMessage/ResponseResult;)LnoteSnapMessage/NoteInfoResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0, p1}, LnoteSnapMessage/NoteInfoResponse;->e(LnoteSnapMessage/NoteInfoResponse;LnoteSnapMessage/ResponseResult;)V

    return-object p0
.end method

.method public setCheckpoint(J)LnoteSnapMessage/NoteInfoResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0, p1, p2}, LnoteSnapMessage/NoteInfoResponse;->f(LnoteSnapMessage/NoteInfoResponse;J)V

    return-object p0
.end method

.method public setCommitId(Ljava/lang/String;)LnoteSnapMessage/NoteInfoResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0, p1}, LnoteSnapMessage/NoteInfoResponse;->g(LnoteSnapMessage/NoteInfoResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCommitIdBytes(Lcom/google/protobuf/ByteString;)LnoteSnapMessage/NoteInfoResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0, p1}, LnoteSnapMessage/NoteInfoResponse;->h(LnoteSnapMessage/NoteInfoResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setModifiedtime(J)LnoteSnapMessage/NoteInfoResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0, p1, p2}, LnoteSnapMessage/NoteInfoResponse;->i(LnoteSnapMessage/NoteInfoResponse;J)V

    return-object p0
.end method

.method public setResponseResult(LnoteSnapMessage/ResponseResult$Builder;)LnoteSnapMessage/NoteInfoResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/NoteInfoResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LnoteSnapMessage/ResponseResult;

    invoke-static {v0, p1}, LnoteSnapMessage/NoteInfoResponse;->j(LnoteSnapMessage/NoteInfoResponse;LnoteSnapMessage/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LnoteSnapMessage/ResponseResult;)LnoteSnapMessage/NoteInfoResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/NoteInfoResponse;

    invoke-static {v0, p1}, LnoteSnapMessage/NoteInfoResponse;->j(LnoteSnapMessage/NoteInfoResponse;LnoteSnapMessage/ResponseResult;)V

    return-object p0
.end method
