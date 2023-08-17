.class public final LcoeditCoreMessage/ResetWorkspaceRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/ResetWorkspaceRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreMessage/ResetWorkspaceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreMessage/ResetWorkspaceRequest;",
        "LcoeditCoreMessage/ResetWorkspaceRequest$Builder;",
        ">;",
        "LcoeditCoreMessage/ResetWorkspaceRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/ResetWorkspaceRequest;->c()LcoeditCoreMessage/ResetWorkspaceRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreMessage/l;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/ResetWorkspaceRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearWorkspaceVersion()LcoeditCoreMessage/ResetWorkspaceRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceRequest;

    invoke-static {v0}, LcoeditCoreMessage/ResetWorkspaceRequest;->a(LcoeditCoreMessage/ResetWorkspaceRequest;)V

    return-object p0
.end method

.method public getWorkspaceVersion()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceRequest;

    invoke-virtual {v0}, LcoeditCoreMessage/ResetWorkspaceRequest;->getWorkspaceVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public setWorkspaceVersion(J)LcoeditCoreMessage/ResetWorkspaceRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/ResetWorkspaceRequest;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/ResetWorkspaceRequest;->b(LcoeditCoreMessage/ResetWorkspaceRequest;J)V

    return-object p0
.end method
