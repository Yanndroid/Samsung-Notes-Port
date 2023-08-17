.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/statically/ScreenOffBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ScreenOffBroadcastReceiver"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/statically/ScreenOffBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isAllowedReceiveCase(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->isUserOwner()Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/statically/ScreenOffBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAllowedReceiveCase isUserOwner is false, "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getUserId(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/RunningChecker;->isScreenOffActivityRunning()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/RunningChecker;->isScreenOffServiceRunning(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/statically/ScreenOffBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string p2, "isAllowedReceiveCase ScreenOff is running"

    goto :goto_0

    :cond_4
    :goto_2
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/statically/ScreenOffBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string p2, "isAllowedReceiveCase intent or action is null"

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/statically/ScreenOffBroadcastReceiver;->isAllowedReceiveCase(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/receiver/statically/ScreenOffBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "onReceive, execute ScreenOffExecutor"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SCREEN_OFF"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "pre_initialized"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "execute_type"

    const-string v2, "service"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/ExecutorFactory;->createExecutor(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AbsExecutor;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/executor/executors/AbsExecutor;->execute(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p1, "onReceive end"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
