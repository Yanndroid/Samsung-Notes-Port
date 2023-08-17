.class public final LnoteSnapMessage/BinaryInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LnoteSnapMessage/BinaryInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LnoteSnapMessage/BinaryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LnoteSnapMessage/BinaryInfo;",
        "LnoteSnapMessage/BinaryInfo$Builder;",
        ">;",
        "LnoteSnapMessage/BinaryInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LnoteSnapMessage/BinaryInfo;->n()LnoteSnapMessage/BinaryInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LnoteSnapMessage/b;)V
    .locals 0

    invoke-direct {p0}, LnoteSnapMessage/BinaryInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHash()LnoteSnapMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-static {v0}, LnoteSnapMessage/BinaryInfo;->a(LnoteSnapMessage/BinaryInfo;)V

    return-object p0
.end method

.method public clearLength()LnoteSnapMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-static {v0}, LnoteSnapMessage/BinaryInfo;->b(LnoteSnapMessage/BinaryInfo;)V

    return-object p0
.end method

.method public clearName()LnoteSnapMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-static {v0}, LnoteSnapMessage/BinaryInfo;->c(LnoteSnapMessage/BinaryInfo;)V

    return-object p0
.end method

.method public clearSize()LnoteSnapMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-static {v0}, LnoteSnapMessage/BinaryInfo;->d(LnoteSnapMessage/BinaryInfo;)V

    return-object p0
.end method

.method public clearType()LnoteSnapMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-static {v0}, LnoteSnapMessage/BinaryInfo;->e(LnoteSnapMessage/BinaryInfo;)V

    return-object p0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-virtual {v0}, LnoteSnapMessage/BinaryInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHashBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-virtual {v0}, LnoteSnapMessage/BinaryInfo;->getHashBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLength()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-virtual {v0}, LnoteSnapMessage/BinaryInfo;->getLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-virtual {v0}, LnoteSnapMessage/BinaryInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-virtual {v0}, LnoteSnapMessage/BinaryInfo;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-virtual {v0}, LnoteSnapMessage/BinaryInfo;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-virtual {v0}, LnoteSnapMessage/BinaryInfo;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-virtual {v0}, LnoteSnapMessage/BinaryInfo;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setHash(Ljava/lang/String;)LnoteSnapMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-static {v0, p1}, LnoteSnapMessage/BinaryInfo;->f(LnoteSnapMessage/BinaryInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setHashBytes(Lcom/google/protobuf/ByteString;)LnoteSnapMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-static {v0, p1}, LnoteSnapMessage/BinaryInfo;->g(LnoteSnapMessage/BinaryInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLength(J)LnoteSnapMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-static {v0, p1, p2}, LnoteSnapMessage/BinaryInfo;->h(LnoteSnapMessage/BinaryInfo;J)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)LnoteSnapMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-static {v0, p1}, LnoteSnapMessage/BinaryInfo;->i(LnoteSnapMessage/BinaryInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)LnoteSnapMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-static {v0, p1}, LnoteSnapMessage/BinaryInfo;->j(LnoteSnapMessage/BinaryInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSize(J)LnoteSnapMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-static {v0, p1, p2}, LnoteSnapMessage/BinaryInfo;->k(LnoteSnapMessage/BinaryInfo;J)V

    return-object p0
.end method

.method public setType(Ljava/lang/String;)LnoteSnapMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-static {v0, p1}, LnoteSnapMessage/BinaryInfo;->l(LnoteSnapMessage/BinaryInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)LnoteSnapMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/BinaryInfo;

    invoke-static {v0, p1}, LnoteSnapMessage/BinaryInfo;->m(LnoteSnapMessage/BinaryInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
