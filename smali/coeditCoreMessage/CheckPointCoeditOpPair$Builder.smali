.class public final LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements LcoeditCoreMessage/CheckPointCoeditOpPairOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditCoreMessage/CheckPointCoeditOpPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "LcoeditCoreMessage/CheckPointCoeditOpPair;",
        "LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;",
        ">;",
        "LcoeditCoreMessage/CheckPointCoeditOpPairOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, LcoeditCoreMessage/CheckPointCoeditOpPair;->u()LcoeditCoreMessage/CheckPointCoeditOpPair;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public synthetic constructor <init>(LcoeditCoreMessage/d;)V
    .locals 0

    invoke-direct {p0}, LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCoeditOperation(Ljava/lang/Iterable;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditOperation/CoeditOperation;",
            ">;)",
            "LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->a(LcoeditCoreMessage/CheckPointCoeditOpPair;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllObjectInfo(Ljava/lang/Iterable;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "LcoeditCoreMessage/ObjectInfo;",
            ">;)",
            "LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->b(LcoeditCoreMessage/CheckPointCoeditOpPair;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCoeditOperation(ILcoeditOperation/CoeditOperation$Builder;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->c(LcoeditCoreMessage/CheckPointCoeditOpPair;ILcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public addCoeditOperation(ILcoeditOperation/CoeditOperation;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->c(LcoeditCoreMessage/CheckPointCoeditOpPair;ILcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public addCoeditOperation(LcoeditOperation/CoeditOperation$Builder;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->d(LcoeditCoreMessage/CheckPointCoeditOpPair;LcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public addCoeditOperation(LcoeditOperation/CoeditOperation;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->d(LcoeditCoreMessage/CheckPointCoeditOpPair;LcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public addObjectInfo(ILcoeditCoreMessage/ObjectInfo$Builder;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->e(LcoeditCoreMessage/CheckPointCoeditOpPair;ILcoeditCoreMessage/ObjectInfo;)V

    return-object p0
.end method

.method public addObjectInfo(ILcoeditCoreMessage/ObjectInfo;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->e(LcoeditCoreMessage/CheckPointCoeditOpPair;ILcoeditCoreMessage/ObjectInfo;)V

    return-object p0
.end method

.method public addObjectInfo(LcoeditCoreMessage/ObjectInfo$Builder;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->f(LcoeditCoreMessage/CheckPointCoeditOpPair;LcoeditCoreMessage/ObjectInfo;)V

    return-object p0
.end method

.method public addObjectInfo(LcoeditCoreMessage/ObjectInfo;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->f(LcoeditCoreMessage/CheckPointCoeditOpPair;LcoeditCoreMessage/ObjectInfo;)V

    return-object p0
.end method

.method public clearCheckpoint()LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->g(LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public clearCoeditOperation()LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->h(LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public clearDeviceInfo()LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->i(LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public clearExtraData()LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->j(LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public clearObjectInfo()LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->k(LcoeditCoreMessage/CheckPointCoeditOpPair;)V

    return-object p0
.end method

.method public getCheckpoint()J
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {v0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getCheckpoint()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCoeditOperation(I)LcoeditOperation/CoeditOperation;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {v0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getCoeditOperation(I)LcoeditOperation/CoeditOperation;

    move-result-object p1

    return-object p1
.end method

.method public getCoeditOperationCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {v0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getCoeditOperationCount()I

    move-result v0

    return v0
.end method

.method public getCoeditOperationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {v0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getCoeditOperationList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()LcoeditCoreMessage/DeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {v0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getDeviceInfo()LcoeditCoreMessage/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getExtraData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {v0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getExtraData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraDataBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {v0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getExtraDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getObjectInfo(I)LcoeditCoreMessage/ObjectInfo;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {v0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getObjectInfo(I)LcoeditCoreMessage/ObjectInfo;

    move-result-object p1

    return-object p1
.end method

.method public getObjectInfoCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {v0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getObjectInfoCount()I

    move-result v0

    return v0
.end method

.method public getObjectInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditCoreMessage/ObjectInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {v0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->getObjectInfoList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {v0}, LcoeditCoreMessage/CheckPointCoeditOpPair;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public mergeDeviceInfo(LcoeditCoreMessage/DeviceInfo;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->l(LcoeditCoreMessage/CheckPointCoeditOpPair;LcoeditCoreMessage/DeviceInfo;)V

    return-object p0
.end method

.method public removeCoeditOperation(I)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->m(LcoeditCoreMessage/CheckPointCoeditOpPair;I)V

    return-object p0
.end method

.method public removeObjectInfo(I)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->n(LcoeditCoreMessage/CheckPointCoeditOpPair;I)V

    return-object p0
.end method

.method public setCheckpoint(J)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->o(LcoeditCoreMessage/CheckPointCoeditOpPair;J)V

    return-object p0
.end method

.method public setCoeditOperation(ILcoeditOperation/CoeditOperation$Builder;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditOperation/CoeditOperation;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->p(LcoeditCoreMessage/CheckPointCoeditOpPair;ILcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public setCoeditOperation(ILcoeditOperation/CoeditOperation;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->p(LcoeditCoreMessage/CheckPointCoeditOpPair;ILcoeditOperation/CoeditOperation;)V

    return-object p0
.end method

.method public setDeviceInfo(LcoeditCoreMessage/DeviceInfo$Builder;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, LcoeditCoreMessage/DeviceInfo;

    invoke-static {v0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->q(LcoeditCoreMessage/CheckPointCoeditOpPair;LcoeditCoreMessage/DeviceInfo;)V

    return-object p0
.end method

.method public setDeviceInfo(LcoeditCoreMessage/DeviceInfo;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->q(LcoeditCoreMessage/CheckPointCoeditOpPair;LcoeditCoreMessage/DeviceInfo;)V

    return-object p0
.end method

.method public setExtraData(Ljava/lang/String;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->r(LcoeditCoreMessage/CheckPointCoeditOpPair;Ljava/lang/String;)V

    return-object p0
.end method

.method public setExtraDataBytes(Lcom/google/protobuf/ByteString;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1}, LcoeditCoreMessage/CheckPointCoeditOpPair;->s(LcoeditCoreMessage/CheckPointCoeditOpPair;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setObjectInfo(ILcoeditCoreMessage/ObjectInfo$Builder;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, LcoeditCoreMessage/ObjectInfo;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->t(LcoeditCoreMessage/CheckPointCoeditOpPair;ILcoeditCoreMessage/ObjectInfo;)V

    return-object p0
.end method

.method public setObjectInfo(ILcoeditCoreMessage/ObjectInfo;)LcoeditCoreMessage/CheckPointCoeditOpPair$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, LcoeditCoreMessage/CheckPointCoeditOpPair;

    invoke-static {v0, p1, p2}, LcoeditCoreMessage/CheckPointCoeditOpPair;->t(LcoeditCoreMessage/CheckPointCoeditOpPair;ILcoeditCoreMessage/ObjectInfo;)V

    return-object p0
.end method
