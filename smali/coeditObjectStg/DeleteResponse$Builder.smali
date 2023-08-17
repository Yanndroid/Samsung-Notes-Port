.class public final LcoeditObjectStg/DeleteResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditObjectStg/DeleteResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditObjectStg/DeleteResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditObjectStg/DeleteResponse;",
        "LcoeditObjectStg/DeleteResponse$Builder;",
        ">;",
        "LcoeditObjectStg/DeleteResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditObjectStg/DeleteResponse;->d()LcoeditObjectStg/DeleteResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditObjectStg/b;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectStg/DeleteResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearResponseResult()LcoeditObjectStg/DeleteResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/DeleteResponse;

    invoke-static {v0}, LcoeditObjectStg/DeleteResponse;->a(LcoeditObjectStg/DeleteResponse;)V

    return-object p0
.end method

.method public getResponseResult()LcoeditObjectStg/ResponseResult;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/DeleteResponse;

    invoke-virtual {v0}, LcoeditObjectStg/DeleteResponse;->getResponseResult()LcoeditObjectStg/ResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/DeleteResponse;

    invoke-virtual {v0}, LcoeditObjectStg/DeleteResponse;->hasResponseResult()Z

    move-result v0

    return v0
.end method

.method public mergeResponseResult(LcoeditObjectStg/ResponseResult;)LcoeditObjectStg/DeleteResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/DeleteResponse;

    invoke-static {v0, p1}, LcoeditObjectStg/DeleteResponse;->b(LcoeditObjectStg/DeleteResponse;LcoeditObjectStg/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditObjectStg/ResponseResult$Builder;)LcoeditObjectStg/DeleteResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/DeleteResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditObjectStg/ResponseResult;

    invoke-static {v0, p1}, LcoeditObjectStg/DeleteResponse;->c(LcoeditObjectStg/DeleteResponse;LcoeditObjectStg/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditObjectStg/ResponseResult;)LcoeditObjectStg/DeleteResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/DeleteResponse;

    invoke-static {v0, p1}, LcoeditObjectStg/DeleteResponse;->c(LcoeditObjectStg/DeleteResponse;LcoeditObjectStg/ResponseResult;)V

    return-object p0
.end method
