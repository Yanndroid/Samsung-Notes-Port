.class Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;

.field public final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$1;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->b(Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->c(Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->b(Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->a(Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;)Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$ILockTimerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->b(Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$ILockTimerListener;->onTick(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$1;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$1;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;->a(Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel;)Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$ILockTimerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/lock/model/timer/LockTimerModel$ILockTimerListener;->onEnd()V

    :goto_0
    return-void
.end method
