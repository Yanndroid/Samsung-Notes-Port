.class public final LcoeditCoreInternalMessage/DeleteResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreInternalMessage/DeleteResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreInternalMessage/DeleteResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreInternalMessage/DeleteResponse;",
        "LcoeditCoreInternalMessage/DeleteResponse$Builder;",
        ">;",
        "LcoeditCoreInternalMessage/DeleteResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreInternalMessage/DeleteResponse;->d()LcoeditCoreInternalMessage/DeleteResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreInternalMessage/b;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreInternalMessage/DeleteResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearResponseResult()LcoeditCoreInternalMessage/DeleteResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/DeleteResponse;

    invoke-static {v0}, LcoeditCoreInternalMessage/DeleteResponse;->a(LcoeditCoreInternalMessage/DeleteResponse;)V

    return-object p0
.end method

.method public getResponseResult()LcoeditCoreMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/DeleteResponse;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/DeleteResponse;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/DeleteResponse;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/DeleteResponse;->hasResponseResult()Z

    move-result v0

    return v0
.end method

.method public mergeResponseResult(LcoeditCoreMessage/ResponseResult;)LcoeditCoreInternalMessage/DeleteResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/DeleteResponse;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/DeleteResponse;->b(LcoeditCoreInternalMessage/DeleteResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditCoreMessage/ResponseResult$Builder;)LcoeditCoreInternalMessage/DeleteResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/DeleteResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/DeleteResponse;->c(LcoeditCoreInternalMessage/DeleteResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditCoreMessage/ResponseResult;)LcoeditCoreInternalMessage/DeleteResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/DeleteResponse;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/DeleteResponse;->c(LcoeditCoreInternalMessage/DeleteResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method
