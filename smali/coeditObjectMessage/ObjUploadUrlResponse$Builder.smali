.class public final LcoeditObjectMessage/ObjUploadUrlResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditObjectMessage/ObjUploadUrlResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditObjectMessage/ObjUploadUrlResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditObjectMessage/ObjUploadUrlResponse;",
        "LcoeditObjectMessage/ObjUploadUrlResponse$Builder;",
        ">;",
        "LcoeditObjectMessage/ObjUploadUrlResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditObjectMessage/ObjUploadUrlResponse;->j()LcoeditObjectMessage/ObjUploadUrlResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditObjectMessage/f;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectMessage/ObjUploadUrlResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearObjId()LcoeditObjectMessage/ObjUploadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0}, LcoeditObjectMessage/ObjUploadUrlResponse;->a(LcoeditObjectMessage/ObjUploadUrlResponse;)V

    return-object p0
.end method

.method public clearResponseResult()LcoeditObjectMessage/ObjUploadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0}, LcoeditObjectMessage/ObjUploadUrlResponse;->b(LcoeditObjectMessage/ObjUploadUrlResponse;)V

    return-object p0
.end method

.method public clearUploadSignedUrl()LcoeditObjectMessage/ObjUploadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0}, LcoeditObjectMessage/ObjUploadUrlResponse;->c(LcoeditObjectMessage/ObjUploadUrlResponse;)V

    return-object p0
.end method

.method public getObjId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-virtual {v0}, LcoeditObjectMessage/ObjUploadUrlResponse;->getObjId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-virtual {v0}, LcoeditObjectMessage/ObjUploadUrlResponse;->getObjIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponseResult()LcoeditObjectMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-virtual {v0}, LcoeditObjectMessage/ObjUploadUrlResponse;->getResponseResult()LcoeditObjectMessage/ResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public getUploadSignedUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-virtual {v0}, LcoeditObjectMessage/ObjUploadUrlResponse;->getUploadSignedUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploadSignedUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-virtual {v0}, LcoeditObjectMessage/ObjUploadUrlResponse;->getUploadSignedUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-virtual {v0}, LcoeditObjectMessage/ObjUploadUrlResponse;->hasResponseResult()Z

    move-result v0

    return v0
.end method

.method public mergeResponseResult(LcoeditObjectMessage/ResponseResult;)LcoeditObjectMessage/ObjUploadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0, p1}, LcoeditObjectMessage/ObjUploadUrlResponse;->d(LcoeditObjectMessage/ObjUploadUrlResponse;LcoeditObjectMessage/ResponseResult;)V

    return-object p0
.end method

.method public setObjId(Ljava/lang/String;)LcoeditObjectMessage/ObjUploadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0, p1}, LcoeditObjectMessage/ObjUploadUrlResponse;->e(LcoeditObjectMessage/ObjUploadUrlResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setObjIdBytes(Lcom/google/protobuf/ByteString;)LcoeditObjectMessage/ObjUploadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0, p1}, LcoeditObjectMessage/ObjUploadUrlResponse;->f(LcoeditObjectMessage/ObjUploadUrlResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditObjectMessage/ResponseResult$Builder;)LcoeditObjectMessage/ObjUploadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditObjectMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditObjectMessage/ObjUploadUrlResponse;->g(LcoeditObjectMessage/ObjUploadUrlResponse;LcoeditObjectMessage/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditObjectMessage/ResponseResult;)LcoeditObjectMessage/ObjUploadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0, p1}, LcoeditObjectMessage/ObjUploadUrlResponse;->g(LcoeditObjectMessage/ObjUploadUrlResponse;LcoeditObjectMessage/ResponseResult;)V

    return-object p0
.end method

.method public setUploadSignedUrl(Ljava/lang/String;)LcoeditObjectMessage/ObjUploadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0, p1}, LcoeditObjectMessage/ObjUploadUrlResponse;->h(LcoeditObjectMessage/ObjUploadUrlResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUploadSignedUrlBytes(Lcom/google/protobuf/ByteString;)LcoeditObjectMessage/ObjUploadUrlResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectMessage/ObjUploadUrlResponse;

    invoke-static {v0, p1}, LcoeditObjectMessage/ObjUploadUrlResponse;->i(LcoeditObjectMessage/ObjUploadUrlResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
