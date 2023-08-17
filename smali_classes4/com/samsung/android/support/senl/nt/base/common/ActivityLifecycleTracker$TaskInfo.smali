.class public Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo$MultiTaskInfo;
    }
.end annotation


# instance fields
.field public fullWindowTaskId:I

.field public hasFullWindow:Z

.field public multiTaskInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo$MultiTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field public taskCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;->multiTaskInfos:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getPairTypeTask(I)Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo$MultiTaskInfo;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo;->multiTaskInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo$MultiTaskInfo;

    iget v4, v3, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo$MultiTaskInfo;->pairType:I

    if-ne v4, p1, :cond_0

    iget v4, v3, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$TaskInfo$MultiTaskInfo;->taskId:I

    if-ge v1, v4, :cond_0

    move-object v2, v3

    move v1, v4

    goto :goto_0

    :cond_1
    return-object v2
.end method
