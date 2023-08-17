.class public abstract Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final ACTION_MCF_SERVICE_STARTED:Ljava/lang/String; = "com.samsung.android.mcfds.SERVICE_STARTED"

.field public static final PERMISSION_MCF_SERVICE:Ljava/lang/String; = "com.samsung.android.mcfds.permission.START_SERVICE"

.field private static final TAG:Ljava/lang/String; = "ContinuityReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onContinuityServiceReconnected(Landroid/content/Context;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "ContinuityReceiver"

    if-nez p1, :cond_0

    const-string p1, "onReceive# context is null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive# action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.mcfds.SERVICE_STARTED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/ContinuityReceiver;->onContinuityServiceReconnected(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
