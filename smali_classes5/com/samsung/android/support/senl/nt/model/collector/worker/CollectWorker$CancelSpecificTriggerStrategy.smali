.class Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelSpecificTriggerStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelSpecificTriggerStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/worker/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/collector/worker/CollectWorker$CancelSpecificTriggerStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelActiveTask()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCancelable(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;)Z
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;->getCancelType()I

    move-result p1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/model/collector/worker/task/AbsCollectTask;->getTriggerType()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
