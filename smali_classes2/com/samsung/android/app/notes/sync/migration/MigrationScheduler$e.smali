.class public Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$e;
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

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$e;->a:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$e$a;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$e$a;-><init>(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$e;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager;->closeAll(Lcom/samsung/android/support/senl/nt/base/common/startmanager/ModelStartManager$OnCloseListener;)V

    return-void
.end method
