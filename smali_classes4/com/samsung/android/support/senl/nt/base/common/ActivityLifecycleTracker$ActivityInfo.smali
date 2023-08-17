.class Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityInfo"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mCreationTime:J

.field private mIsForeground:Z

.field private mLastLaunchTime:J

.field private mLastStoppedTime:J

.field private final mTaskId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityInfo;->mActivity:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityInfo;->mTaskId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityInfo;->mIsForeground:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityInfo;->mCreationTime:J

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityInfo;->mLastLaunchTime:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityInfo;->mLastStoppedTime:J

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityInfo;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityInfo;->mCreationTime:J

    return-wide v0
.end method

.method public getLastLaunchTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityInfo;->mLastLaunchTime:J

    return-wide v0
.end method

.method public getTaskId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityInfo;->mTaskId:I

    return v0
.end method

.method public isForeground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityInfo;->mIsForeground:Z

    return v0
.end method

.method public setForeground(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityInfo;->mIsForeground:Z

    return-void
.end method

.method public setLastStoppedTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityInfo;->mLastStoppedTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityInfo;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityInfo;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLastLaunchTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$ActivityInfo;->mLastLaunchTime:J

    return-void
.end method
