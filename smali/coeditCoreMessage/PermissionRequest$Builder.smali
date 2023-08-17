.class public final LcoeditCoreMessage/PermissionRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/PermissionRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreMessage/PermissionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreMessage/PermissionRequest;",
        "LcoeditCoreMessage/PermissionRequest$Builder;",
        ">;",
        "LcoeditCoreMessage/PermissionRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/PermissionRequest;->d()LcoeditCoreMessage/PermissionRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreMessage/i;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/PermissionRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPermissionType()LcoeditCoreMessage/PermissionRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/PermissionRequest;

    invoke-static {v0}, LcoeditCoreMessage/PermissionRequest;->a(LcoeditCoreMessage/PermissionRequest;)V

    return-object p0
.end method

.method public getPermissionType()LcoeditCoreMessage/PermissionType;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/PermissionRequest;

    invoke-virtual {v0}, LcoeditCoreMessage/PermissionRequest;->getPermissionType()LcoeditCoreMessage/PermissionType;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionTypeValue()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/PermissionRequest;

    invoke-virtual {v0}, LcoeditCoreMessage/PermissionRequest;->getPermissionTypeValue()I

    move-result v0

    return v0
.end method

.method public setPermissionType(LcoeditCoreMessage/PermissionType;)LcoeditCoreMessage/PermissionRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/PermissionRequest;

    invoke-static {v0, p1}, LcoeditCoreMessage/PermissionRequest;->b(LcoeditCoreMessage/PermissionRequest;LcoeditCoreMessage/PermissionType;)V

    return-object p0
.end method

.method public setPermissionTypeValue(I)LcoeditCoreMessage/PermissionRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/PermissionRequest;

    invoke-static {v0, p1}, LcoeditCoreMessage/PermissionRequest;->c(LcoeditCoreMessage/PermissionRequest;I)V

    return-object p0
.end method
