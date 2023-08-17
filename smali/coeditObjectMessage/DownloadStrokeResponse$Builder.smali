.class public final LcoeditObjectMessage/DownloadStrokeResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditObjectMessage/DownloadStrokeResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditObjectMessage/DownloadStrokeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditObjectMessage/DownloadStrokeResponse;",
        "LcoeditObjectMessage/DownloadStrokeResponse$Builder;",
        ">;",
        "LcoeditObjectMessage/DownloadStrokeResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditObjectMessage/DownloadStrokeResponse;->g()LcoeditObjectMessage/DownloadStrokeResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditObjectMessage/d;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/DownloadStrokeResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBinary()LcoeditObjectMessage/DownloadStrokeResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-static {v0}, LcoeditObjectMessage/DownloadStrokeResponse;->a(LcoeditObjectMessage/DownloadStrokeResponse;)V

    return-object p0
.end method

.method public clearResponseResult()LcoeditObjectMessage/DownloadStrokeResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-static {v0}, LcoeditObjectMessage/DownloadStrokeResponse;->b(LcoeditObjectMessage/DownloadStrokeResponse;)V

    return-object p0
.end method

.method public getBinary()LcoeditObjectMessage/Binary;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-virtual {v0}, LcoeditObjectMessage/DownloadStrokeResponse;->getBinary()LcoeditObjectMessage/Binary;

    move-result-object v0

    return-object v0
.end method

.method public getResponseResult()LcoeditObjectMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-virtual {v0}, LcoeditObjectMessage/DownloadStrokeResponse;->getResponseResult()LcoeditObjectMessage/ResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public hasBinary()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-virtual {v0}, LcoeditObjectMessage/DownloadStrokeResponse;->hasBinary()Z

    move-result v0

    return v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-virtual {v0}, LcoeditObjectMessage/DownloadStrokeResponse;->hasResponseResult()Z

    move-result v0

    return v0
.end method

.method public mergeBinary(LcoeditObjectMessage/Binary;)LcoeditObjectMessage/DownloadStrokeResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-static {v0, p1}, LcoeditObjectMessage/DownloadStrokeResponse;->c(LcoeditObjectMessage/DownloadStrokeResponse;LcoeditObjectMessage/Binary;)V

    return-object p0
.end method

.method public mergeResponseResult(LcoeditObjectMessage/ResponseResult;)LcoeditObjectMessage/DownloadStrokeResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-static {v0, p1}, LcoeditObjectMessage/DownloadStrokeResponse;->d(LcoeditObjectMessage/DownloadStrokeResponse;LcoeditObjectMessage/ResponseResult;)V

    return-object p0
.end method

.method public setBinary(LcoeditObjectMessage/Binary$Builder;)LcoeditObjectMessage/DownloadStrokeResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/Binary;

    invoke-static {v0, p1}, LcoeditObjectMessage/DownloadStrokeResponse;->e(LcoeditObjectMessage/DownloadStrokeResponse;LcoeditObjectMessage/Binary;)V

    return-object p0
.end method

.method public setBinary(LcoeditObjectMessage/Binary;)LcoeditObjectMessage/DownloadStrokeResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-static {v0, p1}, LcoeditObjectMessage/DownloadStrokeResponse;->e(LcoeditObjectMessage/DownloadStrokeResponse;LcoeditObjectMessage/Binary;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditObjectMessage/ResponseResult$Builder;)LcoeditObjectMessage/DownloadStrokeResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditObjectMessage/DownloadStrokeResponse;->f(LcoeditObjectMessage/DownloadStrokeResponse;LcoeditObjectMessage/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditObjectMessage/ResponseResult;)LcoeditObjectMessage/DownloadStrokeResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/DownloadStrokeResponse;

    invoke-static {v0, p1}, LcoeditObjectMessage/DownloadStrokeResponse;->f(LcoeditObjectMessage/DownloadStrokeResponse;LcoeditObjectMessage/ResponseResult;)V

    return-object p0
.end method
