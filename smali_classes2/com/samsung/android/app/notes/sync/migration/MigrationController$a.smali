.class public Lcom/samsung/android/app/notes/sync/migration/MigrationController$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/migration/backup/BackupTask$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/migration/MigrationController;->n(Lp1/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/migration/MigrationController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/MigrationController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController$a;->a:Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBackUpCompleted."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController$a;->a:Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->f(Lcom/samsung/android/app/notes/sync/migration/MigrationController;)Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController$a;->a:Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->f(Lcom/samsung/android/app/notes/sync/migration/MigrationController;)Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;->stopForegroundService()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController$a;->a:Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->b(Lcom/samsung/android/app/notes/sync/migration/MigrationController;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController$a;->a:Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    invoke-static {v1}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->b(Lcom/samsung/android/app/notes/sync/migration/MigrationController;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController$a;->a:Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->g(Lcom/samsung/android/app/notes/sync/migration/MigrationController;Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController$a;->a:Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->f(Lcom/samsung/android/app/notes/sync/migration/MigrationController;)Lcom/samsung/android/app/notes/sync/migration/common/MigrationService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationController$a;->a:Lcom/samsung/android/app/notes/sync/migration/MigrationController;

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationController;->u()V

    return-void
.end method
