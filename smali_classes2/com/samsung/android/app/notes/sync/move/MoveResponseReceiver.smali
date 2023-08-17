.class public Lcom/samsung/android/app/notes/sync/move/MoveResponseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final BROADCAST_INTENT_FOR_SAMSUNG_NOTE_OP_DONE:Ljava/lang/String; = "com.samsung.android.app.notes.model.ACTION_FILE_OPERATIONS_DONE"

.field private static final DELETED_FILE_PATH_KEY:Ljava/lang/String; = "deletedFilePath"

.field private static final TAG:Ljava/lang/String; = "MoveResponseReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "MoveResponseReceiver"

    const-string v1, "[MOVE] onReceive()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "[MOVE] onReceive() : context is null!"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p1, "[MOVE] onReceive() : intent is null!"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.notes.model.ACTION_FILE_OPERATIONS_DONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "[MOVE] onReceive() : receive BROADCAST_INTENT_FOR_SAMSUNG_NOTE_OP_DONE!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p1, "[MOVE] onReceive() : bundle is null!"

    goto :goto_0

    :cond_2
    const-string v1, "deletedFilePath"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lz1/d;->j(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    :cond_3
    const-string p1, "[MOVE] onReceive() : no DELETED_FILE_PATH_KEY"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->ef(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, "[MOVE] onReceive() : invalid action"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
