.class public Lcom/samsung/android/support/senl/nt/app/biometrics/receiver/IrisChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Biometrics$IrisChangedReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "Biometrics$IrisChangedReceiver"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->getPrefUseIris(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "Iris disabled"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefIrisChanged(Landroid/content/Context;Z)V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/util/LockPrefUtils;->setPrefIrisUniqueTime(Landroid/content/Context;J)V

    :cond_2
    :goto_0
    return-void
.end method
