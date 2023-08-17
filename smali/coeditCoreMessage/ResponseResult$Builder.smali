.class public final LcoeditCoreMessage/ResponseResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/ResponseResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreMessage/ResponseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreMessage/ResponseResult;",
        "LcoeditCoreMessage/ResponseResult$Builder;",
        ">;",
        "LcoeditCoreMessage/ResponseResultOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/ResponseResult;->p()LcoeditCoreMessage/ResponseResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreMessage/n;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ResponseResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCode()LcoeditCoreMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0}, LcoeditCoreMessage/ResponseResult;->a(LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public clearLcode()LcoeditCoreMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0}, LcoeditCoreMessage/ResponseResult;->b(LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public clearLmsg()LcoeditCoreMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0}, LcoeditCoreMessage/ResponseResult;->c(LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public clearRcode()LcoeditCoreMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0}, LcoeditCoreMessage/ResponseResult;->d(LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public clearRequestId()LcoeditCoreMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0}, LcoeditCoreMessage/ResponseResult;->e(LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public clearRmsg()LcoeditCoreMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0}, LcoeditCoreMessage/ResponseResult;->f(LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public getCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-virtual {v0}, LcoeditCoreMessage/ResponseResult;->getCode()I

    move-result v0

    return v0
.end method

.method public getLcode()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-virtual {v0}, LcoeditCoreMessage/ResponseResult;->getLcode()I

    move-result v0

    return v0
.end method

.method public getLmsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-virtual {v0}, LcoeditCoreMessage/ResponseResult;->getLmsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLmsgBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-virtual {v0}, LcoeditCoreMessage/ResponseResult;->getLmsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRcode()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-virtual {v0}, LcoeditCoreMessage/ResponseResult;->getRcode()I

    move-result v0

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-virtual {v0}, LcoeditCoreMessage/ResponseResult;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-virtual {v0}, LcoeditCoreMessage/ResponseResult;->getRequestIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRmsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-virtual {v0}, LcoeditCoreMessage/ResponseResult;->getRmsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRmsgBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-virtual {v0}, LcoeditCoreMessage/ResponseResult;->getRmsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setCode(I)LcoeditCoreMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditCoreMessage/ResponseResult;->g(LcoeditCoreMessage/ResponseResult;I)V

    return-object p0
.end method

.method public setLcode(I)LcoeditCoreMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditCoreMessage/ResponseResult;->h(LcoeditCoreMessage/ResponseResult;I)V

    return-object p0
.end method

.method public setLmsg(Ljava/lang/String;)LcoeditCoreMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditCoreMessage/ResponseResult;->i(LcoeditCoreMessage/ResponseResult;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLmsgBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditCoreMessage/ResponseResult;->j(LcoeditCoreMessage/ResponseResult;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRcode(I)LcoeditCoreMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditCoreMessage/ResponseResult;->k(LcoeditCoreMessage/ResponseResult;I)V

    return-object p0
.end method

.method public setRequestId(Ljava/lang/String;)LcoeditCoreMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditCoreMessage/ResponseResult;->l(LcoeditCoreMessage/ResponseResult;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRequestIdBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditCoreMessage/ResponseResult;->m(LcoeditCoreMessage/ResponseResult;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRmsg(Ljava/lang/String;)LcoeditCoreMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditCoreMessage/ResponseResult;->n(LcoeditCoreMessage/ResponseResult;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRmsgBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditCoreMessage/ResponseResult;->o(LcoeditCoreMessage/ResponseResult;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
