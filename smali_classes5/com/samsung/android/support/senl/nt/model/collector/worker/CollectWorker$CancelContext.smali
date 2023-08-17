.class Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelContext"
.end annotation


# instance fields
.field private final mStrategy:Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelStrategy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelContext;->mStrategy:Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelStrategy;

    return-void
.end method


# virtual methods
.method public cancelActiveTask()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelContext;->mStrategy:Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelStrategy;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelStrategy;->cancelActiveTask()Z

    move-result v0

    return v0
.end method

.method public isCancelable(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelContext;->mStrategy:Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelStrategy;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelStrategy;->isCancelable(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;)Z

    move-result p1

    return p1
.end method
