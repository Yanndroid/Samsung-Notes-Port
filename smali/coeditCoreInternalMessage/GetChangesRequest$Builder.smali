.class public final LcoeditCoreInternalMessage/GetChangesRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreInternalMessage/GetChangesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreInternalMessage/GetChangesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreInternalMessage/GetChangesRequest;",
        "LcoeditCoreInternalMessage/GetChangesRequest$Builder;",
        ">;",
        "LcoeditCoreInternalMessage/GetChangesRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreInternalMessage/GetChangesRequest;->h()LcoeditCoreInternalMessage/GetChangesRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreInternalMessage/e;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreInternalMessage/GetChangesRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCid()LcoeditCoreInternalMessage/GetChangesRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesRequest;

    invoke-static {v0}, LcoeditCoreInternalMessage/GetChangesRequest;->a(LcoeditCoreInternalMessage/GetChangesRequest;)V

    return-object p0
.end method

.method public clearEndCheckpoint()LcoeditCoreInternalMessage/GetChangesRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesRequest;

    invoke-static {v0}, LcoeditCoreInternalMessage/GetChangesRequest;->b(LcoeditCoreInternalMessage/GetChangesRequest;)V

    return-object p0
.end method

.method public clearStartCheckpoint()LcoeditCoreInternalMessage/GetChangesRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesRequest;

    invoke-static {v0}, LcoeditCoreInternalMessage/GetChangesRequest;->c(LcoeditCoreInternalMessage/GetChangesRequest;)V

    return-object p0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesRequest;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/GetChangesRequest;->getCid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesRequest;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/GetChangesRequest;->getCidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEndCheckpoint()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesRequest;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/GetChangesRequest;->getEndCheckpoint()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartCheckpoint()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesRequest;

    invoke-virtual {v0}, LcoeditCoreInternalMessage/GetChangesRequest;->getStartCheckpoint()J

    move-result-wide v0

    return-wide v0
.end method

.method public setCid(Ljava/lang/String;)LcoeditCoreInternalMessage/GetChangesRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesRequest;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/GetChangesRequest;->d(LcoeditCoreInternalMessage/GetChangesRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCidBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreInternalMessage/GetChangesRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesRequest;

    invoke-static {v0, p1}, LcoeditCoreInternalMessage/GetChangesRequest;->e(LcoeditCoreInternalMessage/GetChangesRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setEndCheckpoint(J)LcoeditCoreInternalMessage/GetChangesRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesRequest;

    invoke-static {v0, p1, p2}, LcoeditCoreInternalMessage/GetChangesRequest;->f(LcoeditCoreInternalMessage/GetChangesRequest;J)V

    return-object p0
.end method

.method public setStartCheckpoint(J)LcoeditCoreInternalMessage/GetChangesRequest$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreInternalMessage/GetChangesRequest;

    invoke-static {v0, p1, p2}, LcoeditCoreInternalMessage/GetChangesRequest;->g(LcoeditCoreInternalMessage/GetChangesRequest;J)V

    return-object p0
.end method
