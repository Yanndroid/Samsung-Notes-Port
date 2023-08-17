.class public Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;


# instance fields
.field private mRequestCollectContract:Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->mRequestCollectContract:Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;

    return-void
.end method

.method public static cancelCollect()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getRequestCollectContract()Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getRequestCollectContract()Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;->cancelCollect()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->sInstance:Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->sInstance:Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->sInstance:Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSourceType(I)I
    .locals 1
    .param p0    # I
        .annotation build Lcom/samsung/android/support/senl/nt/data/common/constants/SearchConstants$Source;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getRequestCollectContract()Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getRequestCollectContract()Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;->getSourceType(I)I

    move-result p0

    return p0
.end method

.method public static pausePdfCollect()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getRequestCollectContract()Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getRequestCollectContract()Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;->pausePdfCollect()V

    return-void
.end method

.method public static resumePdfCollect()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getRequestCollectContract()Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getRequestCollectContract()Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;->resumePdfCollect()V

    return-void
.end method

.method public static startCollect(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getRequestCollectContract()Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->getRequestCollectContract()Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;->startCollect(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;IZ)V

    return-void
.end method


# virtual methods
.method public getRequestCollectContract()Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->mRequestCollectContract:Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;

    return-object v0
.end method

.method public setRequestCollectContract(Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/contract/DataToModelManager;->mRequestCollectContract:Lcom/samsung/android/support/senl/nt/data/contract/RequestCollectContract;

    return-void
.end method
