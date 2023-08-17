.class public Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/sync/SyncProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$d;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$d;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$d$a;->a:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnded(I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SyncStartManager onEnded"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$d$a;->a:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$d;

    iget-object p1, p1, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$d;->a:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;

    invoke-static {p1}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->a(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;)V

    return-void
.end method

.method public onStarted()V
    .locals 0

    return-void
.end method
