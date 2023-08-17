.class public Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/ComposerManager$IClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$c;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$c$a;->a:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosedAllComposer()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ComposerStartManager onClosedAllComposer"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$c$a;->a:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$c;

    iget-object v0, v0, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler$c;->a:Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;->a(Lcom/samsung/android/app/notes/sync/migration/MigrationScheduler;)V

    const/4 v0, 0x0

    return v0
.end method
