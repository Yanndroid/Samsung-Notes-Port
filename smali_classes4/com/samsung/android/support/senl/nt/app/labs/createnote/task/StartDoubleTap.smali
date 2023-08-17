.class public Lcom/samsung/android/support/senl/nt/app/labs/createnote/task/StartDoubleTap;
.super Lcom/samsung/android/support/senl/nt/app/labs/createnote/task/Task;
.source "SourceFile"


# static fields
.field private static final ACTION_POPUP_NOTE_DOUBLETAB:Ljava/lang/String; = "com.samsung.action.POPUP_NOTE_DOUBLETAB"

.field private static final TAG:Ljava/lang/String; = "StartDoubleTap"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/labs/createnote/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "StartDoubleTap"

    const-string v1, "run"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.POPUP_NOTE_DOUBLETAB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/labs/createnote/task/Task;->createComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
