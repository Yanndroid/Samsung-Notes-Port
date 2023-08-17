.class Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$ScreenOffBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenOffBroadcastReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$ScreenOffBroadcastReceiver;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;Lcom/samsung/android/support/senl/nt/app/lock/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$ScreenOffBroadcastReceiver;-><init>(Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$ScreenOffBroadcastReceiver;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;->a(Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$ScreenOffBroadcastReceiver;->this$0:Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;->a(Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$State;

    if-eqz p2, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$State;->b(Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$State;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$State;->a(Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$State;)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->isEqualTopActivity(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "goToBackground "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$State;->c(Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager$State;Z)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/common/util/ScreenLockUtil;->coverWindow(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
