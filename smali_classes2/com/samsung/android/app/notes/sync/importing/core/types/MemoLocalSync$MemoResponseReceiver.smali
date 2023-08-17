.class public Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync$MemoResponseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MemoResponseReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync$MemoResponseReceiver;->this$0:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.sec.android.intent.action.RESPONSE_BACKUP_MEMO"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync$MemoResponseReceiver;->this$0:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync;->mCompletedSuccssfully:Z

    iget-object p1, p1, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync;->mWaitForCompleted:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string p2, "MemoLocalSync"

    const-string v0, "onReceive() : receive RESPONSE_BACKUP_MEMO!"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync$MemoResponseReceiver;->this$0:Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync;

    iget-object p2, p2, Lcom/samsung/android/app/notes/sync/importing/core/types/MemoLocalSync;->mWaitForCompleted:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_0
    :goto_0
    return-void
.end method
