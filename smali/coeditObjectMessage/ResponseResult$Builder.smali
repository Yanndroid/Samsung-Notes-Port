.class public final LcoeditObjectMessage/ResponseResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditObjectMessage/ResponseResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditObjectMessage/ResponseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditObjectMessage/ResponseResult;",
        "LcoeditObjectMessage/ResponseResult$Builder;",
        ">;",
        "LcoeditObjectMessage/ResponseResultOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditObjectMessage/ResponseResult;->m()LcoeditObjectMessage/ResponseResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditObjectMessage/g;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/ResponseResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCode()LcoeditObjectMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ResponseResult;

    invoke-static {v0}, LcoeditObjectMessage/ResponseResult;->a(LcoeditObjectMessage/ResponseResult;)V

    return-object p0
.end method

.method public clearLcode()LcoeditObjectMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ResponseResult;

    invoke-static {v0}, LcoeditObjectMessage/ResponseResult;->b(LcoeditObjectMessage/ResponseResult;)V

    return-object p0
.end method

.method public clearLmsg()LcoeditObjectMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ResponseResult;

    invoke-static {v0}, LcoeditObjectMessage/ResponseResult;->c(LcoeditObjectMessage/ResponseResult;)V

    return-object p0
.end method

.method public clearRcode()LcoeditObjectMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ResponseResult;

    invoke-static {v0}, LcoeditObjectMessage/ResponseResult;->d(LcoeditObjectMessage/ResponseResult;)V

    return-object p0
.end method

.method public clearRmsg()LcoeditObjectMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ResponseResult;

    invoke-static {v0}, LcoeditObjectMessage/ResponseResult;->e(LcoeditObjectMessage/ResponseResult;)V

    return-object p0
.end method

.method public getCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ResponseResult;

    invoke-virtual {v0}, LcoeditObjectMessage/ResponseResult;->getCode()I

    move-result v0

    return v0
.end method

.method public getLcode()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ResponseResult;

    invoke-virtual {v0}, LcoeditObjectMessage/ResponseResult;->getLcode()I

    move-result v0

    return v0
.end method

.method public getLmsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ResponseResult;

    invoke-virtual {v0}, LcoeditObjectMessage/ResponseResult;->getLmsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLmsgBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ResponseResult;

    invoke-virtual {v0}, LcoeditObjectMessage/ResponseResult;->getLmsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRcode()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ResponseResult;

    invoke-virtual {v0}, LcoeditObjectMessage/ResponseResult;->getRcode()I

    move-result v0

    return v0
.end method

.method public getRmsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ResponseResult;

    invoke-virtual {v0}, LcoeditObjectMessage/ResponseResult;->getRmsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRmsgBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ResponseResult;

    invoke-virtual {v0}, LcoeditObjectMessage/ResponseResult;->getRmsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setCode(I)LcoeditObjectMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditObjectMessage/ResponseResult;->f(LcoeditObjectMessage/ResponseResult;I)V

    return-object p0
.end method

.method public setLcode(I)LcoeditObjectMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditObjectMessage/ResponseResult;->g(LcoeditObjectMessage/ResponseResult;I)V

    return-object p0
.end method

.method public setLmsg(Ljava/lang/String;)LcoeditObjectMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditObjectMessage/ResponseResult;->h(LcoeditObjectMessage/ResponseResult;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLmsgBytes(Lcom/google/protobuf/ByteString;)LcoeditObjectMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditObjectMessage/ResponseResult;->i(LcoeditObjectMessage/ResponseResult;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRcode(I)LcoeditObjectMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditObjectMessage/ResponseResult;->j(LcoeditObjectMessage/ResponseResult;I)V

    return-object p0
.end method

.method public setRmsg(Ljava/lang/String;)LcoeditObjectMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditObjectMessage/ResponseResult;->k(LcoeditObjectMessage/ResponseResult;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRmsgBytes(Lcom/google/protobuf/ByteString;)LcoeditObjectMessage/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditObjectMessage/ResponseResult;->l(LcoeditObjectMessage/ResponseResult;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
