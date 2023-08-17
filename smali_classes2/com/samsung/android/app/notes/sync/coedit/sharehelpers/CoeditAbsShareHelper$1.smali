.class Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper$1;->this$0:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper$1;->this$0:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;

    monitor-enter p1

    :try_start_0
    const-string p2, "CoeditAbsShareHelper"

    const-string v0, "OldService is connected"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper$1;->this$0:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->d:Z

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper$1;->this$0:Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/samsung/android/app/notes/sync/coedit/sharehelpers/CoeditAbsShareHelper;->d:Z

    return-void
.end method
