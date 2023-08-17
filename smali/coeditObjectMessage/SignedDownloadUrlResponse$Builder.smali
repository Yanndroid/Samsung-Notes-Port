.class public final LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditObjectMessage/SignedDownloadUrlResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditObjectMessage/SignedDownloadUrlResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditObjectMessage/SignedDownloadUrlResponse;",
        "LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;",
        ">;",
        "LcoeditObjectMessage/SignedDownloadUrlResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditObjectMessage/SignedDownloadUrlResponse;->j()LcoeditObjectMessage/SignedDownloadUrlResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditObjectMessage/i;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBinaryInfo()LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0}, LcoeditObjectMessage/SignedDownloadUrlResponse;->a(LcoeditObjectMessage/SignedDownloadUrlResponse;)V

    return-object p0
.end method

.method public clearDownloadSignedUrl()LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0}, LcoeditObjectMessage/SignedDownloadUrlResponse;->b(LcoeditObjectMessage/SignedDownloadUrlResponse;)V

    return-object p0
.end method

.method public clearResponseResult()LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0}, LcoeditObjectMessage/SignedDownloadUrlResponse;->c(LcoeditObjectMessage/SignedDownloadUrlResponse;)V

    return-object p0
.end method

.method public getBinaryInfo()LcoeditObjectMessage/BinaryInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-virtual {v0}, LcoeditObjectMessage/SignedDownloadUrlResponse;->getBinaryInfo()LcoeditObjectMessage/BinaryInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadSignedUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-virtual {v0}, LcoeditObjectMessage/SignedDownloadUrlResponse;->getDownloadSignedUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadSignedUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-virtual {v0}, LcoeditObjectMessage/SignedDownloadUrlResponse;->getDownloadSignedUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponseResult()LcoeditObjectMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-virtual {v0}, LcoeditObjectMessage/SignedDownloadUrlResponse;->getResponseResult()LcoeditObjectMessage/ResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public hasBinaryInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-virtual {v0}, LcoeditObjectMessage/SignedDownloadUrlResponse;->hasBinaryInfo()Z

    move-result v0

    return v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-virtual {v0}, LcoeditObjectMessage/SignedDownloadUrlResponse;->hasResponseResult()Z

    move-result v0

    return v0
.end method

.method public mergeBinaryInfo(LcoeditObjectMessage/BinaryInfo;)LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0, p1}, LcoeditObjectMessage/SignedDownloadUrlResponse;->d(LcoeditObjectMessage/SignedDownloadUrlResponse;LcoeditObjectMessage/BinaryInfo;)V

    return-object p0
.end method

.method public mergeResponseResult(LcoeditObjectMessage/ResponseResult;)LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0, p1}, LcoeditObjectMessage/SignedDownloadUrlResponse;->e(LcoeditObjectMessage/SignedDownloadUrlResponse;LcoeditObjectMessage/ResponseResult;)V

    return-object p0
.end method

.method public setBinaryInfo(LcoeditObjectMessage/BinaryInfo$Builder;)LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/BinaryInfo;

    invoke-static {v0, p1}, LcoeditObjectMessage/SignedDownloadUrlResponse;->f(LcoeditObjectMessage/SignedDownloadUrlResponse;LcoeditObjectMessage/BinaryInfo;)V

    return-object p0
.end method

.method public setBinaryInfo(LcoeditObjectMessage/BinaryInfo;)LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0, p1}, LcoeditObjectMessage/SignedDownloadUrlResponse;->f(LcoeditObjectMessage/SignedDownloadUrlResponse;LcoeditObjectMessage/BinaryInfo;)V

    return-object p0
.end method

.method public setDownloadSignedUrl(Ljava/lang/String;)LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0, p1}, LcoeditObjectMessage/SignedDownloadUrlResponse;->g(LcoeditObjectMessage/SignedDownloadUrlResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDownloadSignedUrlBytes(Lcom/google/protobuf/ByteString;)LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0, p1}, LcoeditObjectMessage/SignedDownloadUrlResponse;->h(LcoeditObjectMessage/SignedDownloadUrlResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditObjectMessage/ResponseResult$Builder;)LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditObjectMessage/SignedDownloadUrlResponse;->i(LcoeditObjectMessage/SignedDownloadUrlResponse;LcoeditObjectMessage/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditObjectMessage/ResponseResult;)LcoeditObjectMessage/SignedDownloadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/SignedDownloadUrlResponse;

    invoke-static {v0, p1}, LcoeditObjectMessage/SignedDownloadUrlResponse;->i(LcoeditObjectMessage/SignedDownloadUrlResponse;LcoeditObjectMessage/ResponseResult;)V

    return-object p0
.end method
