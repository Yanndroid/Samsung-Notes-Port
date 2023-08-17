.class public final LcoeditCoreMessage/PermissionResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/PermissionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreMessage/PermissionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreMessage/PermissionResponse;",
        "LcoeditCoreMessage/PermissionResponse$Builder;",
        ">;",
        "LcoeditCoreMessage/PermissionResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/PermissionResponse;->d()LcoeditCoreMessage/PermissionResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreMessage/j;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/PermissionResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearResponseResult()LcoeditCoreMessage/PermissionResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/PermissionResponse;

    invoke-static {v0}, LcoeditCoreMessage/PermissionResponse;->a(LcoeditCoreMessage/PermissionResponse;)V

    return-object p0
.end method

.method public getResponseResult()LcoeditCoreMessage/ResponseResult;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/PermissionResponse;

    invoke-virtual {v0}, LcoeditCoreMessage/PermissionResponse;->getResponseResult()LcoeditCoreMessage/ResponseResult;

    move-result-object v0

    return-object v0
.end method

.method public hasResponseResult()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/PermissionResponse;

    invoke-virtual {v0}, LcoeditCoreMessage/PermissionResponse;->hasResponseResult()Z

    move-result v0

    return v0
.end method

.method public mergeResponseResult(LcoeditCoreMessage/ResponseResult;)LcoeditCoreMessage/PermissionResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/PermissionResponse;

    invoke-static {v0, p1}, LcoeditCoreMessage/PermissionResponse;->b(LcoeditCoreMessage/PermissionResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditCoreMessage/ResponseResult$Builder;)LcoeditCoreMessage/PermissionResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/PermissionResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/ResponseResult;

    invoke-static {v0, p1}, LcoeditCoreMessage/PermissionResponse;->c(LcoeditCoreMessage/PermissionResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method

.method public setResponseResult(LcoeditCoreMessage/ResponseResult;)LcoeditCoreMessage/PermissionResponse$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/PermissionResponse;

    invoke-static {v0, p1}, LcoeditCoreMessage/PermissionResponse;->c(LcoeditCoreMessage/PermissionResponse;LcoeditCoreMessage/ResponseResult;)V

    return-object p0
.end method
