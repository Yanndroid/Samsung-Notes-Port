.class public final LcoeditObjectMessage/UploadStrokeResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditObjectMessage/UploadStrokeResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditObjectMessage/UploadStrokeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditObjectMessage/UploadStrokeResponse;",
        "LcoeditObjectMessage/UploadStrokeResponse$Builder;",
        ">;",
        "LcoeditObjectMessage/UploadStrokeResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditObjectMessage/UploadStrokeResponse;->g()LcoeditObjectMessage/UploadStrokeResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditObjectMessage/k;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/UploadStrokeResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearObjId()LcoeditObjectMessage/UploadStrokeResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeResponse;

    invoke-static {v0}, LcoeditObjectMessage/UploadStrokeResponse;->a(LcoeditObjectMessage/UploadStrokeResponse;)V

    return-object p0
.end method

.method public clearResponseResult()LcoeditObjectMessage/UploadStrokeResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeResponse;

    invoke-static {v0}, LcoeditObjectMessage/UploadStrokeResponse;->b(LcoeditObjectMessage/UploadStrokeResponse;)V

    return-object p0
.end method

.method public getObjId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeResponse;

    invoke-virtual {v0}, LcoeditObjectMessage/UploadStrokeResponse;->getObjId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeResponse;

    invoke-virtual {v0}, LcoeditObjectMessage/UploadStrokeResponse;->getObjIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponseResult()LcoeditObjectMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeResponse;

    invoke-virtual {v0}, LcoeditObjectMessage/UploadStrokeResponse;->getResponseResult()LcoeditObjectMessage/ResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeResponse;

    invoke-virtual {v0}, LcoeditObjectMessage/UploadStrokeResponse;->hasResponseResult()Z

    move-result v0

    return v0
.end method

.method public mergeResponseResult(LcoeditObjectMessage/ResponseResult;)LcoeditObjectMessage/UploadStrokeResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeResponse;

    invoke-static {v0, p1}, LcoeditObjectMessage/UploadStrokeResponse;->c(LcoeditObjectMessage/UploadStrokeResponse;LcoeditObjectMessage/ResponseResult;)V

    return-object p0
.end method

.method public setObjId(Ljava/lang/String;)LcoeditObjectMessage/UploadStrokeResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeResponse;

    invoke-static {v0, p1}, LcoeditObjectMessage/UploadStrokeResponse;->d(LcoeditObjectMessage/UploadStrokeResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setObjIdBytes(Lcom/google/protobuf/ByteString;)LcoeditObjectMessage/UploadStrokeResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeResponse;

    invoke-static {v0, p1}, LcoeditObjectMessage/UploadStrokeResponse;->e(LcoeditObjectMessage/UploadStrokeResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditObjectMessage/ResponseResult$Builder;)LcoeditObjectMessage/UploadStrokeResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditObjectMessage/UploadStrokeResponse;->f(LcoeditObjectMessage/UploadStrokeResponse;LcoeditObjectMessage/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditObjectMessage/ResponseResult;)LcoeditObjectMessage/UploadStrokeResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/UploadStrokeResponse;

    invoke-static {v0, p1}, LcoeditObjectMessage/UploadStrokeResponse;->f(LcoeditObjectMessage/UploadStrokeResponse;LcoeditObjectMessage/ResponseResult;)V

    return-object p0
.end method
