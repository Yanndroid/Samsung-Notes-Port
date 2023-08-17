.class public final LnoteSnapMessage/UploadResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LnoteSnapMessage/UploadResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LnoteSnapMessage/UploadResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LnoteSnapMessage/UploadResponse;",
        "LnoteSnapMessage/UploadResponse$Builder;",
        ">;",
        "LnoteSnapMessage/UploadResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LnoteSnapMessage/UploadResponse;->g()LnoteSnapMessage/UploadResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LnoteSnapMessage/i;)V
    .locals 0

    invoke-direct {p0}, LnoteSnapMessage/UploadResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearResponseResult()LnoteSnapMessage/UploadResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadResponse;

    invoke-static {v0}, LnoteSnapMessage/UploadResponse;->a(LnoteSnapMessage/UploadResponse;)V

    return-object p0
.end method

.method public clearWorkspaceId()LnoteSnapMessage/UploadResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadResponse;

    invoke-static {v0}, LnoteSnapMessage/UploadResponse;->b(LnoteSnapMessage/UploadResponse;)V

    return-object p0
.end method

.method public getResponseResult()LnoteSnapMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadResponse;

    invoke-virtual {v0}, LnoteSnapMessage/UploadResponse;->getResponseResult()LnoteSnapMessage/ResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadResponse;

    invoke-virtual {v0}, LnoteSnapMessage/UploadResponse;->getWorkspaceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspaceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadResponse;

    invoke-virtual {v0}, LnoteSnapMessage/UploadResponse;->getWorkspaceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadResponse;

    invoke-virtual {v0}, LnoteSnapMessage/UploadResponse;->hasResponseResult()Z

    move-result v0

    return v0
.end method

.method public mergeResponseResult(LnoteSnapMessage/ResponseResult;)LnoteSnapMessage/UploadResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadResponse;

    invoke-static {v0, p1}, LnoteSnapMessage/UploadResponse;->c(LnoteSnapMessage/UploadResponse;LnoteSnapMessage/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LnoteSnapMessage/ResponseResult$Builder;)LnoteSnapMessage/UploadResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LnoteSnapMessage/ResponseResult;

    invoke-static {v0, p1}, LnoteSnapMessage/UploadResponse;->d(LnoteSnapMessage/UploadResponse;LnoteSnapMessage/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LnoteSnapMessage/ResponseResult;)LnoteSnapMessage/UploadResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadResponse;

    invoke-static {v0, p1}, LnoteSnapMessage/UploadResponse;->d(LnoteSnapMessage/UploadResponse;LnoteSnapMessage/ResponseResult;)V

    return-object p0
.end method

.method public setWorkspaceId(Ljava/lang/String;)LnoteSnapMessage/UploadResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadResponse;

    invoke-static {v0, p1}, LnoteSnapMessage/UploadResponse;->e(LnoteSnapMessage/UploadResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setWorkspaceIdBytes(Lcom/google/protobuf/ByteString;)LnoteSnapMessage/UploadResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LnoteSnapMessage/UploadResponse;

    invoke-static {v0, p1}, LnoteSnapMessage/UploadResponse;->f(LnoteSnapMessage/UploadResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
