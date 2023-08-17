.class public Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SnapGrpcManager"


# instance fields
.field private mSnapClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createChannel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcDataContract;)V
    .locals 12

    new-instance v11, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;

    const-string v2, "443"

    move-object v0, v11

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcDataContract;Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/task/GrpcRunnable$Contract;)V

    move-object v0, p0

    iput-object v11, v0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->mSnapClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;

    return-void
.end method

.method public getSnapDataDownloadStroke(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->mSnapClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->getSnapData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->getDownloadStroke(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getSnapDataDownloadStrokeMapKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->mSnapClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->getSnapData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->getDownloadStrokeMapKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSnapDataDownloadXmlData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->mSnapClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->getSnapData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->getDownloadXmlData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSnapDataResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->mSnapClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->getSnapData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getResourceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isChannelConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->mSnapClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSnapDataResultOk()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->mSnapClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->getSnapData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->getResultCode()I

    move-result v0

    sget-object v2, Lio/grpc/Status$Code;->OK:Lio/grpc/Status$Code;

    invoke-virtual {v2}, Lio/grpc/Status$Code;->value()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public putSnapDataUploadStrokeRequest(Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->mSnapClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->getSnapData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->putUploadStrokeRequest(Ljava/lang/String;Ljava/lang/String;[BJ)V

    return-void
.end method

.method public putUploadNoteRequest(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->mSnapClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->getSnapData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;->putUploadNoteRequest(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->mSnapClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->mSnapClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;

    :cond_0
    return-void
.end method

.method public removeUndownloadedObjectInfo(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->mSnapClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->getSnapData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->removeUndownloadedObjectInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method public removeUnuploadedContentFileData(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->mSnapClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->getSnapData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->removeUnuploadedContentFileData(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestSnap(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->mSnapClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSnap, skip, SnapClient is invalid, message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", method : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SnapGrpcManager"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->request(Ljava/lang/String;I)V

    return-void
.end method

.method public snapDataRequestUploadFileData(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->snapDataRequestUploadObjects(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetObjectUploadUrl for Snap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->requestSnap(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->isChannelConnected()Z

    move-result p1

    return p1
.end method

.method public snapDataRequestUploadObjects(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/SnapGrpcManager;->mSnapClient:Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/SnapGrpcClient;->getSnapData()Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/snap/data/SnapGrpcData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;->addUploadContentFileData(Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpFileData;)V

    return-void
.end method
