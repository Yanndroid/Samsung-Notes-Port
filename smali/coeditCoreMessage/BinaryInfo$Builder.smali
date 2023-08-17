.class public final LcoeditCoreMessage/BinaryInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/BinaryInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreMessage/BinaryInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreMessage/BinaryInfo;",
        "LcoeditCoreMessage/BinaryInfo$Builder;",
        ">;",
        "LcoeditCoreMessage/BinaryInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/BinaryInfo;->i()LcoeditCoreMessage/BinaryInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreMessage/a;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/BinaryInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHash()LcoeditCoreMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0}, LcoeditCoreMessage/BinaryInfo;->a(LcoeditCoreMessage/BinaryInfo;)V

    return-object p0
.end method

.method public clearMimetype()LcoeditCoreMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0}, LcoeditCoreMessage/BinaryInfo;->b(LcoeditCoreMessage/BinaryInfo;)V

    return-object p0
.end method

.method public clearSize()LcoeditCoreMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0}, LcoeditCoreMessage/BinaryInfo;->c(LcoeditCoreMessage/BinaryInfo;)V

    return-object p0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/BinaryInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/BinaryInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHashBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/BinaryInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/BinaryInfo;->getHashBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/BinaryInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/BinaryInfo;->getMimetype()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimetypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/BinaryInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/BinaryInfo;->getMimetypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/BinaryInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/BinaryInfo;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public setHash(Ljava/lang/String;)LcoeditCoreMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/BinaryInfo;->d(LcoeditCoreMessage/BinaryInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setHashBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/BinaryInfo;->e(LcoeditCoreMessage/BinaryInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMimetype(Ljava/lang/String;)LcoeditCoreMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/BinaryInfo;->f(LcoeditCoreMessage/BinaryInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMimetypeBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/BinaryInfo;->g(LcoeditCoreMessage/BinaryInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSize(J)LcoeditCoreMessage/BinaryInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/BinaryInfo;->h(LcoeditCoreMessage/BinaryInfo;J)V

    return-object p0
.end method
