.class Lcom/samsung/android/app/notes/sync/migration/MigrationController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/migration/MigrationController;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/sync/migration/MigrationController;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/MigrationController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController$1;->this$0:Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->m()Ljava/lang/String;

    move-result-object p1

    const-string v0, "startBackUp - onServiceConnected."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/notes/sync/R$string;->migration_backup_data:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController$1;->this$0:Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->h(Lcom/samsung/android/app/notes/sync/migration/MigrationController;Z)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController$1;->this$0:Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    check-cast p2, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService$LocalBinder;

    invoke-virtual {p2}, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService$LocalBinder;->getService()Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->j(Lcom/samsung/android/app/notes/sync/migration/MigrationController;Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;)V

    iget-object p2, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController$1;->this$0:Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    invoke-static {p2}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->f(Lcom/samsung/android/app/notes/sync/migration/MigrationController;)Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;->startForegroundService(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController$1;->this$0:Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->c(Lcom/samsung/android/app/notes/sync/migration/MigrationController;)Lp1/a;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->k(Lcom/samsung/android/app/notes/sync/migration/MigrationController;Lp1/a;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->m()Ljava/lang/String;

    move-result-object p1

    const-string v0, "startBackUp - onServiceDisconnected."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController$1;->this$0:Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->h(Lcom/samsung/android/app/notes/sync/migration/MigrationController;Z)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController$1;->this$0:Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->e(Lcom/samsung/android/app/notes/sync/migration/MigrationController;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController$1;->this$0:Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->j(Lcom/samsung/android/app/notes/sync/migration/MigrationController;Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;)V

    :cond_0
    return-void
.end method
