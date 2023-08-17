.class public final LnoteSnapMessage/DownloadResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LnoteSnapMessage/DownloadResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LnoteSnapMessage/DownloadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LnoteSnapMessage/DownloadResponse;",
        "LnoteSnapMessage/DownloadResponse$Builder;",
        ">;",
        "LnoteSnapMessage/DownloadResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LnoteSnapMessage/DownloadResponse;->k()LnoteSnapMessage/DownloadResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LnoteSnapMessage/d;)V
    .locals 0

    invoke-direct {p0}, LnoteSnapMessage/DownloadResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBinary()LnoteSnapMessage/DownloadResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/DownloadResponse;

    invoke-static {v0}, LnoteSnapMessage/DownloadResponse;->a(LnoteSnapMessage/DownloadResponse;)V

    return-object p0
.end method

.method public clearBinaryInfo()LnoteSnapMessage/DownloadResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/DownloadResponse;

    invoke-static {v0}, LnoteSnapMessage/DownloadResponse;->b(LnoteSnapMessage/DownloadResponse;)V

    return-object p0
.end method

.method public clearRequest()LnoteSnapMessage/DownloadResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/DownloadResponse;

    invoke-static {v0}, LnoteSnapMessage/DownloadResponse;->c(LnoteSnapMessage/DownloadResponse;)V

    return-object p0
.end method

.method public clearResponseResult()LnoteSnapMessage/DownloadResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/DownloadResponse;

    invoke-static {v0}, LnoteSnapMessage/DownloadResponse;->d(LnoteSnapMessage/DownloadResponse;)V

    return-object p0
.end method

.method public getBinary()LnoteSnapMessage/Binary;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/DownloadResponse;

    invoke-virtual {v0}, LnoteSnapMessage/DownloadResponse;->getBinary()LnoteSnapMessage/Binary;

    move-result-object v0

    return-object v0
.end method

.method public getBinaryInfo()LnoteSnapMessage/BinaryInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/DownloadResponse;

    invoke-virtual {v0}, LnoteSnapMessage/DownloadResponse;->getBinaryInfo()LnoteSnapMessage/BinaryInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRequestCase()LnoteSnapMessage/DownloadResponse$RequestCase;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/DownloadResponse;

    invoke-virtual {v0}, LnoteSnapMessage/DownloadResponse;->getRequestCase()LnoteSnapMessage/DownloadResponse$RequestCase;

    move-result-object v0

    return-object v0
.end method

.method public getResponseResult()LnoteSnapMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/DownloadResponse;

    invoke-virtual {v0}, LnoteSnapMessage/DownloadResponse;->getResponseResult()LnoteSnapMessage/ResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public hasBinary()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/DownloadResponse;

    invoke-virtual {v0}, LnoteSnapMessage/DownloadResponse;->hasBinary()Z

    move-result v0

    return v0
.end method

.method public hasBinaryInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/DownloadResponse;

    invoke-virtual {v0}, LnoteSnapMessage/DownloadResponse;->hasBinaryInfo()Z

    move-result v0

    return v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/DownloadResponse;

    invoke-virtual {v0}, LnoteSnapMessage/DownloadResponse;->hasResponseResult()Z

    move-result v0

    return v0
.end method

.method public mergeBinary(LnoteSnapMessage/Binary;)LnoteSnapMessage/DownloadResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/DownloadResponse;

    invoke-static {v0, p1}, LnoteSnapMessage/DownloadResponse;->e(LnoteSnapMessage/DownloadResponse;LnoteSnapMessage/Binary;)V

    return-object p0
.end method

.method public mergeBinaryInfo(LnoteSnapMessage/BinaryInfo;)LnoteSnapMessage/DownloadResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/DownloadResponse;

    invoke-static {v0, p1}, LnoteSnapMessage/DownloadResponse;->f(LnoteSnapMessage/DownloadResponse;LnoteSnapMessage/BinaryInfo;)V

    return-object p0
.end method

.method public mergeResponseResult(LnoteSnapMessage/ResponseResult;)LnoteSnapMessage/DownloadResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/DownloadResponse;

    invoke-static {v0, p1}, LnoteSnapMessage/DownloadResponse;->g(LnoteSnapMessage/DownloadResponse;LnoteSnapMessage/ResponseResult;)V

    return-object p0
.end method

.method public setBinary(LnoteSnapMessage/Binary$Builder;)LnoteSnapMessage/DownloadResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/DownloadResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LnoteSnapMessage/Binary;

    invoke-static {v0, p1}, LnoteSnapMessage/DownloadResponse;->h(LnoteSnapMessage/DownloadResponse;LnoteSnapMessage/Binary;)V

    return-object p0
.end method

.method public setBinary(LnoteSnapMessage/Binary;)LnoteSnapMessage/DownloadResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/DownloadResponse;

    invoke-static {v0, p1}, LnoteSnapMessage/DownloadResponse;->h(LnoteSnapMessage/DownloadResponse;LnoteSnapMessage/Binary;)V

    return-object p0
.end method

.method public setBinaryInfo(LnoteSnapMessage/BinaryInfo$Builder;)LnoteSnapMessage/DownloadResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/DownloadResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LnoteSnapMessage/BinaryInfo;

    invoke-static {v0, p1}, LnoteSnapMessage/DownloadResponse;->i(LnoteSnapMessage/DownloadResponse;LnoteSnapMessage/BinaryInfo;)V

    return-object p0
.end method

.method public setBinaryInfo(LnoteSnapMessage/BinaryInfo;)LnoteSnapMessage/DownloadResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/DownloadResponse;

    invoke-static {v0, p1}, LnoteSnapMessage/DownloadResponse;->i(LnoteSnapMessage/DownloadResponse;LnoteSnapMessage/BinaryInfo;)V

    return-object p0
.end method

.method public setResponseResult(LnoteSnapMessage/ResponseResult$Builder;)LnoteSnapMessage/DownloadResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/DownloadResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LnoteSnapMessage/ResponseResult;

    invoke-static {v0, p1}, LnoteSnapMessage/DownloadResponse;->j(LnoteSnapMessage/DownloadResponse;LnoteSnapMessage/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LnoteSnapMessage/ResponseResult;)LnoteSnapMessage/DownloadResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/DownloadResponse;

    invoke-static {v0, p1}, LnoteSnapMessage/DownloadResponse;->j(LnoteSnapMessage/DownloadResponse;LnoteSnapMessage/ResponseResult;)V

    return-object p0
.end method
