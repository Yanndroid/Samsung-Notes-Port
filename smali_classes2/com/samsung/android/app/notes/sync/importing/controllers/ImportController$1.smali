.class Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;->i(Lcom/samsung/android/app/notes/sync/importing/controllers/a$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$execute:Lcom/samsung/android/app/notes/sync/importing/controllers/a$a;

.field public final synthetic val$unbindAfterExecute:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;Lcom/samsung/android/app/notes/sync/importing/controllers/a$a;ZLandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$1;->this$0:Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$1;->val$execute:Lcom/samsung/android/app/notes/sync/importing/controllers/a$a;

    iput-boolean p3, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$1;->val$unbindAfterExecute:Z

    iput-object p4, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "ImportController"

    const-string v0, "bindImportServiceAndExecute - onServiceConnected()."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$1;->val$execute:Lcom/samsung/android/app/notes/sync/importing/controllers/a$a;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/samsung/android/app/notes/sync/importing/services/ImportService$LocalBinder;

    invoke-virtual {p2}, Lcom/samsung/android/app/notes/sync/importing/services/ImportService$LocalBinder;->getService()Lcom/samsung/android/app/notes/sync/importing/services/ImportService;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$1;->val$execute:Lcom/samsung/android/app/notes/sync/importing/controllers/a$a;

    invoke-interface {p2, p1}, Lcom/samsung/android/app/notes/sync/importing/controllers/a$a;->a(Lcom/samsung/android/app/notes/sync/importing/services/ImportService;)V

    iget-boolean p2, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$1;->val$unbindAfterExecute:Z

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object p2

    const/4 v0, 0x1

    const-string v1, "IMPORT_CLOUD_DATA_BY_SETTING"

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$1;->this$0:Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;

    invoke-static {p2, p1}, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;->g(Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;Lcom/samsung/android/app/notes/sync/importing/services/ImportService;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$1;->this$0:Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;->f(Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;)Lcom/samsung/android/app/notes/sync/importing/services/ImportService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/notes/sync/importing/services/ImportService;->addConnection(Landroid/content/ServiceConnection;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string p1, "ImportController"

    const-string v0, "bindImportServiceAndExecute - nServiceDisconnected()."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;

    move-result-object p1

    const-string v0, "IMPORT_CLOUD_DATA_BY_SETTING"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/task/TaskState;->setIsRunning(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController$1;->this$0:Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;->g(Lcom/samsung/android/app/notes/sync/importing/controllers/ImportController;Lcom/samsung/android/app/notes/sync/importing/services/ImportService;)V

    return-void
.end method
