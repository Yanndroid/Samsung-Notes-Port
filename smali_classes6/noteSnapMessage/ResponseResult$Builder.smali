.class public final LnoteSnapMessage/ResponseResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LnoteSnapMessage/ResponseResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LnoteSnapMessage/ResponseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LnoteSnapMessage/ResponseResult;",
        "LnoteSnapMessage/ResponseResult$Builder;",
        ">;",
        "LnoteSnapMessage/ResponseResultOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LnoteSnapMessage/ResponseResult;->m()LnoteSnapMessage/ResponseResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LnoteSnapMessage/g;)V
    .locals 0

    invoke-direct {p0}, LnoteSnapMessage/ResponseResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCode()LnoteSnapMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/ResponseResult;

    invoke-static {v0}, LnoteSnapMessage/ResponseResult;->a(LnoteSnapMessage/ResponseResult;)V

    return-object p0
.end method

.method public clearLcode()LnoteSnapMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/ResponseResult;

    invoke-static {v0}, LnoteSnapMessage/ResponseResult;->b(LnoteSnapMessage/ResponseResult;)V

    return-object p0
.end method

.method public clearLmsg()LnoteSnapMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/ResponseResult;

    invoke-static {v0}, LnoteSnapMessage/ResponseResult;->c(LnoteSnapMessage/ResponseResult;)V

    return-object p0
.end method

.method public clearRcode()LnoteSnapMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/ResponseResult;

    invoke-static {v0}, LnoteSnapMessage/ResponseResult;->d(LnoteSnapMessage/ResponseResult;)V

    return-object p0
.end method

.method public clearRmsg()LnoteSnapMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/ResponseResult;

    invoke-static {v0}, LnoteSnapMessage/ResponseResult;->e(LnoteSnapMessage/ResponseResult;)V

    return-object p0
.end method

.method public getCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/ResponseResult;

    invoke-virtual {v0}, LnoteSnapMessage/ResponseResult;->getCode()I

    move-result v0

    return v0
.end method

.method public getLcode()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/ResponseResult;

    invoke-virtual {v0}, LnoteSnapMessage/ResponseResult;->getLcode()I

    move-result v0

    return v0
.end method

.method public getLmsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/ResponseResult;

    invoke-virtual {v0}, LnoteSnapMessage/ResponseResult;->getLmsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLmsgBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/ResponseResult;

    invoke-virtual {v0}, LnoteSnapMessage/ResponseResult;->getLmsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRcode()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/ResponseResult;

    invoke-virtual {v0}, LnoteSnapMessage/ResponseResult;->getRcode()I

    move-result v0

    return v0
.end method

.method public getRmsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/ResponseResult;

    invoke-virtual {v0}, LnoteSnapMessage/ResponseResult;->getRmsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRmsgBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/ResponseResult;

    invoke-virtual {v0}, LnoteSnapMessage/ResponseResult;->getRmsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setCode(I)LnoteSnapMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/ResponseResult;

    invoke-static {v0, p1}, LnoteSnapMessage/ResponseResult;->f(LnoteSnapMessage/ResponseResult;I)V

    return-object p0
.end method

.method public setLcode(I)LnoteSnapMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/ResponseResult;

    invoke-static {v0, p1}, LnoteSnapMessage/ResponseResult;->g(LnoteSnapMessage/ResponseResult;I)V

    return-object p0
.end method

.method public setLmsg(Ljava/lang/String;)LnoteSnapMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/ResponseResult;

    invoke-static {v0, p1}, LnoteSnapMessage/ResponseResult;->h(LnoteSnapMessage/ResponseResult;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLmsgBytes(Lcom/google/protobuf/ByteString;)LnoteSnapMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/ResponseResult;

    invoke-static {v0, p1}, LnoteSnapMessage/ResponseResult;->i(LnoteSnapMessage/ResponseResult;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRcode(I)LnoteSnapMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/ResponseResult;

    invoke-static {v0, p1}, LnoteSnapMessage/ResponseResult;->j(LnoteSnapMessage/ResponseResult;I)V

    return-object p0
.end method

.method public setRmsg(Ljava/lang/String;)LnoteSnapMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/ResponseResult;

    invoke-static {v0, p1}, LnoteSnapMessage/ResponseResult;->k(LnoteSnapMessage/ResponseResult;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRmsgBytes(Lcom/google/protobuf/ByteString;)LnoteSnapMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/ResponseResult;

    invoke-static {v0, p1}, LnoteSnapMessage/ResponseResult;->l(LnoteSnapMessage/ResponseResult;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
