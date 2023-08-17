.class public final LcoeditCoreMessage/ObjectInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/ObjectInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreMessage/ObjectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreMessage/ObjectInfo;",
        "LcoeditCoreMessage/ObjectInfo$Builder;",
        ">;",
        "LcoeditCoreMessage/ObjectInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/ObjectInfo;->j()LcoeditCoreMessage/ObjectInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreMessage/h;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ObjectInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBinaryInfo()LcoeditCoreMessage/ObjectInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0}, LcoeditCoreMessage/ObjectInfo;->a(LcoeditCoreMessage/ObjectInfo;)V

    return-object p0
.end method

.method public clearDownloadSignedUrl()LcoeditCoreMessage/ObjectInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0}, LcoeditCoreMessage/ObjectInfo;->b(LcoeditCoreMessage/ObjectInfo;)V

    return-object p0
.end method

.method public clearObjId()LcoeditCoreMessage/ObjectInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0}, LcoeditCoreMessage/ObjectInfo;->c(LcoeditCoreMessage/ObjectInfo;)V

    return-object p0
.end method

.method public getBinaryInfo()LcoeditCoreMessage/BinaryInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ObjectInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/ObjectInfo;->getBinaryInfo()LcoeditCoreMessage/BinaryInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadSignedUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ObjectInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/ObjectInfo;->getDownloadSignedUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadSignedUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ObjectInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/ObjectInfo;->getDownloadSignedUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getObjId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ObjectInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/ObjectInfo;->getObjId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ObjectInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/ObjectInfo;->getObjIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasBinaryInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ObjectInfo;

    invoke-virtual {v0}, LcoeditCoreMessage/ObjectInfo;->hasBinaryInfo()Z

    move-result v0

    return v0
.end method

.method public mergeBinaryInfo(LcoeditCoreMessage/BinaryInfo;)LcoeditCoreMessage/ObjectInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/ObjectInfo;->d(LcoeditCoreMessage/ObjectInfo;LcoeditCoreMessage/BinaryInfo;)V

    return-object p0
.end method

.method public setBinaryInfo(LcoeditCoreMessage/BinaryInfo$Builder;)LcoeditCoreMessage/ObjectInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ObjectInfo;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/BinaryInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/ObjectInfo;->e(LcoeditCoreMessage/ObjectInfo;LcoeditCoreMessage/BinaryInfo;)V

    return-object p0
.end method

.method public setBinaryInfo(LcoeditCoreMessage/BinaryInfo;)LcoeditCoreMessage/ObjectInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/ObjectInfo;->e(LcoeditCoreMessage/ObjectInfo;LcoeditCoreMessage/BinaryInfo;)V

    return-object p0
.end method

.method public setDownloadSignedUrl(Ljava/lang/String;)LcoeditCoreMessage/ObjectInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/ObjectInfo;->f(LcoeditCoreMessage/ObjectInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDownloadSignedUrlBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/ObjectInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/ObjectInfo;->g(LcoeditCoreMessage/ObjectInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setObjId(Ljava/lang/String;)LcoeditCoreMessage/ObjectInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/ObjectInfo;->h(LcoeditCoreMessage/ObjectInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setObjIdBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/ObjectInfo$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/ObjectInfo;->i(LcoeditCoreMessage/ObjectInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
