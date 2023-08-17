.class public Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$ILockTimerListener;
    }
.end annotation


# static fields
.field private static final MAX_BLOCKING_TIME:J = 0x7530L


# instance fields
.field private mBlockingTime:J

.field private mFailCount:I

.field private mListener:Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$ILockTimerListener;

.field private mRemainSeconds:I


# direct methods
.method public constructor <init>(IJLcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$ILockTimerListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->mFailCount:I

    iput-wide p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->mBlockingTime:J

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$ILockTimerListener;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->checkSavedData()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;)Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$ILockTimerListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$ILockTimerListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->mRemainSeconds:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->mRemainSeconds:I

    return-void
.end method

.method private checkSavedData()V
    .locals 5

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->mBlockingTime:J

    const-wide/16 v2, 0x7530

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x0

    if-lez v2, :cond_0

    move-wide v0, v3

    :cond_0
    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->mBlockingTime:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->startTimer()V

    :cond_1
    return-void
.end method

.method private startTimer()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->mListener:Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$ILockTimerListener;

    iget-wide v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->mBlockingTime:J

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$ILockTimerListener;->onStart(J)V

    iget-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->mBlockingTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->mRemainSeconds:I

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2, v1}, Ljava/util/Timer;-><init>(Z)V

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$1;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$1;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;Ljava/util/Timer;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x3e8

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public getFailCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->mFailCount:I

    return v0
.end method

.method public increaseFailCount()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->mFailCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->mFailCount:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_0

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->mBlockingTime:J

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->startTimer()V

    :cond_0
    return-void
.end method

.method public resetFailCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->mFailCount:I

    return-void
.end method
