.class public Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$f;->a:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/MainListStartManager;->closeAllNoteLists()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$f;->a:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->a(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;)V

    return-void
.end method
