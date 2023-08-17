.class public final LcoeditObjectStg/DeleteRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditObjectStg/DeleteRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditObjectStg/DeleteRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditObjectStg/DeleteRequest;",
        "LcoeditObjectStg/DeleteRequest$Builder;",
        ">;",
        "LcoeditObjectStg/DeleteRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditObjectStg/DeleteRequest;->d()LcoeditObjectStg/DeleteRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditObjectStg/a;)V
    .locals 0

    invoke-direct {p0}, LcoeditObjectStg/DeleteRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearWorkspaceId()LcoeditObjectStg/DeleteRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/DeleteRequest;

    invoke-static {v0}, LcoeditObjectStg/DeleteRequest;->a(LcoeditObjectStg/DeleteRequest;)V

    return-object p0
.end method

.method public getWorkspaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/DeleteRequest;

    invoke-virtual {v0}, LcoeditObjectStg/DeleteRequest;->getWorkspaceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspaceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/DeleteRequest;

    invoke-virtual {v0}, LcoeditObjectStg/DeleteRequest;->getWorkspaceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setWorkspaceId(Ljava/lang/String;)LcoeditObjectStg/DeleteRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/DeleteRequest;

    invoke-static {v0, p1}, LcoeditObjectStg/DeleteRequest;->b(LcoeditObjectStg/DeleteRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setWorkspaceIdBytes(Lcom/google/protobuf/ByteString;)LcoeditObjectStg/DeleteRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditObjectStg/DeleteRequest;

    invoke-static {v0, p1}, LcoeditObjectStg/DeleteRequest;->c(LcoeditObjectStg/DeleteRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
