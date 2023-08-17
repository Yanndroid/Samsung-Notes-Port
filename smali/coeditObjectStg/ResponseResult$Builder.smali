.class public final LcoeditObjectStg/ResponseResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditObjectStg/ResponseResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditObjectStg/ResponseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditObjectStg/ResponseResult;",
        "LcoeditObjectStg/ResponseResult$Builder;",
        ">;",
        "LcoeditObjectStg/ResponseResultOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditObjectStg/ResponseResult;->m()LcoeditObjectStg/ResponseResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditObjectStg/f;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectStg/ResponseResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCode()LcoeditObjectStg/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/ResponseResult;

    invoke-static {v0}, LcoeditObjectStg/ResponseResult;->a(LcoeditObjectStg/ResponseResult;)V

    return-object p0
.end method

.method public clearLcode()LcoeditObjectStg/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/ResponseResult;

    invoke-static {v0}, LcoeditObjectStg/ResponseResult;->b(LcoeditObjectStg/ResponseResult;)V

    return-object p0
.end method

.method public clearLmsg()LcoeditObjectStg/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/ResponseResult;

    invoke-static {v0}, LcoeditObjectStg/ResponseResult;->c(LcoeditObjectStg/ResponseResult;)V

    return-object p0
.end method

.method public clearRcode()LcoeditObjectStg/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/ResponseResult;

    invoke-static {v0}, LcoeditObjectStg/ResponseResult;->d(LcoeditObjectStg/ResponseResult;)V

    return-object p0
.end method

.method public clearRmsg()LcoeditObjectStg/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/ResponseResult;

    invoke-static {v0}, LcoeditObjectStg/ResponseResult;->e(LcoeditObjectStg/ResponseResult;)V

    return-object p0
.end method

.method public getCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/ResponseResult;

    invoke-virtual {v0}, LcoeditObjectStg/ResponseResult;->getCode()I

    move-result v0

    return v0
.end method

.method public getLcode()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/ResponseResult;

    invoke-virtual {v0}, LcoeditObjectStg/ResponseResult;->getLcode()I

    move-result v0

    return v0
.end method

.method public getLmsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/ResponseResult;

    invoke-virtual {v0}, LcoeditObjectStg/ResponseResult;->getLmsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLmsgBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/ResponseResult;

    invoke-virtual {v0}, LcoeditObjectStg/ResponseResult;->getLmsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRcode()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/ResponseResult;

    invoke-virtual {v0}, LcoeditObjectStg/ResponseResult;->getRcode()I

    move-result v0

    return v0
.end method

.method public getRmsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/ResponseResult;

    invoke-virtual {v0}, LcoeditObjectStg/ResponseResult;->getRmsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRmsgBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/ResponseResult;

    invoke-virtual {v0}, LcoeditObjectStg/ResponseResult;->getRmsgBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setCode(I)LcoeditObjectStg/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/ResponseResult;

    invoke-static {v0, p1}, LcoeditObjectStg/ResponseResult;->f(LcoeditObjectStg/ResponseResult;I)V

    return-object p0
.end method

.method public setLcode(I)LcoeditObjectStg/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/ResponseResult;

    invoke-static {v0, p1}, LcoeditObjectStg/ResponseResult;->g(LcoeditObjectStg/ResponseResult;I)V

    return-object p0
.end method

.method public setLmsg(Ljava/lang/String;)LcoeditObjectStg/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/ResponseResult;

    invoke-static {v0, p1}, LcoeditObjectStg/ResponseResult;->h(LcoeditObjectStg/ResponseResult;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLmsgBytes(Lcom/google/protobuf/ByteString;)LcoeditObjectStg/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/ResponseResult;

    invoke-static {v0, p1}, LcoeditObjectStg/ResponseResult;->i(LcoeditObjectStg/ResponseResult;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRcode(I)LcoeditObjectStg/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/ResponseResult;

    invoke-static {v0, p1}, LcoeditObjectStg/ResponseResult;->j(LcoeditObjectStg/ResponseResult;I)V

    return-object p0
.end method

.method public setRmsg(Ljava/lang/String;)LcoeditObjectStg/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/ResponseResult;

    invoke-static {v0, p1}, LcoeditObjectStg/ResponseResult;->k(LcoeditObjectStg/ResponseResult;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRmsgBytes(Lcom/google/protobuf/ByteString;)LcoeditObjectStg/ResponseResult$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/ResponseResult;

    invoke-static {v0, p1}, LcoeditObjectStg/ResponseResult;->l(LcoeditObjectStg/ResponseResult;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
