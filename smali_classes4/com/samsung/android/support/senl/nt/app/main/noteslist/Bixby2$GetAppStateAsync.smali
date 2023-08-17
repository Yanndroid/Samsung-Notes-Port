.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$GetAppStateAsync;
.super Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetAppStateAsync"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async;-><init>(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AbsBixby2Async$AsyncParam;)V

    return-void
.end method


# virtual methods
.method public backgroundOperation()Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;
    .locals 6

    const-string v0, "Bixby2"

    const-string v1, "Bixby_getAppStateThread start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;

    invoke-direct {v1}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;-><init>()V

    new-instance v2, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AppState;

    invoke-direct {v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AppState;-><init>()V

    const-string v3, "false"

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AppState;->setExistEditingNote(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setAppState(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AppState;)V

    const-string v3, "failure"

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setResult(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getComposerToAddContent(I)Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "failure - activity is null"

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setDescription(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->getAppTask(Landroid/content/Context;I)Landroid/app/ActivityManager$AppTask;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "failure - appTask is null"

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setDescription(Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v3, "true"

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/AppState;->setExistEditingNote(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setAppState(Lcom/samsung/android/support/notes/bixby/bixby2/aid/AppState;)V

    const-string v2, "success"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setResult(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/notes/bixby/bixby2/aid/ActionResult;->setDescription(Ljava/lang/String;)V

    const-string v2, "Bixby_getAppStateThread end"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
