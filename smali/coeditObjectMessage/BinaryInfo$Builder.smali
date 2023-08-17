.class public final LcoeditObjectMessage/BinaryInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditObjectMessage/BinaryInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditObjectMessage/BinaryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditObjectMessage/BinaryInfo;",
        "LcoeditObjectMessage/BinaryInfo$Builder;",
        ">;",
        "LcoeditObjectMessage/BinaryInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditObjectMessage/BinaryInfo;->i()LcoeditObjectMessage/BinaryInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditObjectMessage/b;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/BinaryInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHash()LcoeditObjectMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/BinaryInfo;

    invoke-static {v0}, LcoeditObjectMessage/BinaryInfo;->a(LcoeditObjectMessage/BinaryInfo;)V

    return-object p0
.end method

.method public clearMimetype()LcoeditObjectMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/BinaryInfo;

    invoke-static {v0}, LcoeditObjectMessage/BinaryInfo;->b(LcoeditObjectMessage/BinaryInfo;)V

    return-object p0
.end method

.method public clearSize()LcoeditObjectMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/BinaryInfo;

    invoke-static {v0}, LcoeditObjectMessage/BinaryInfo;->c(LcoeditObjectMessage/BinaryInfo;)V

    return-object p0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/BinaryInfo;

    invoke-virtual {v0}, LcoeditObjectMessage/BinaryInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHashBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/BinaryInfo;

    invoke-virtual {v0}, LcoeditObjectMessage/BinaryInfo;->getHashBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/BinaryInfo;

    invoke-virtual {v0}, LcoeditObjectMessage/BinaryInfo;->getMimetype()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimetypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/BinaryInfo;

    invoke-virtual {v0}, LcoeditObjectMessage/BinaryInfo;->getMimetypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/BinaryInfo;

    invoke-virtual {v0}, LcoeditObjectMessage/BinaryInfo;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public setHash(Ljava/lang/String;)LcoeditObjectMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/BinaryInfo;

    invoke-static {v0, p1}, LcoeditObjectMessage/BinaryInfo;->d(LcoeditObjectMessage/BinaryInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setHashBytes(Lcom/google/protobuf/ByteString;)LcoeditObjectMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/BinaryInfo;

    invoke-static {v0, p1}, LcoeditObjectMessage/BinaryInfo;->e(LcoeditObjectMessage/BinaryInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMimetype(Ljava/lang/String;)LcoeditObjectMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/BinaryInfo;

    invoke-static {v0, p1}, LcoeditObjectMessage/BinaryInfo;->f(LcoeditObjectMessage/BinaryInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMimetypeBytes(Lcom/google/protobuf/ByteString;)LcoeditObjectMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/BinaryInfo;

    invoke-static {v0, p1}, LcoeditObjectMessage/BinaryInfo;->g(LcoeditObjectMessage/BinaryInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSize(J)LcoeditObjectMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/BinaryInfo;

    invoke-static {v0, p1, p2}, LcoeditObjectMessage/BinaryInfo;->h(LcoeditObjectMessage/BinaryInfo;J)V

    return-object p0
.end method
