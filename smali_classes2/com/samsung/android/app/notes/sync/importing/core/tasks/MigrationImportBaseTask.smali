.class public abstract Lcom/samsung/android/app/notes/sync/importing/core/tasks/MigrationImportBaseTask;
.super Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;
.source "SourceFile"


# instance fields
.field public mFromSmartSwitch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask$a;Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;I)V

    iput-boolean p5, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/MigrationImportBaseTask;->mFromSmartSwitch:Z

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/MigrationImportBaseTask;->unsetRunningFlag()V

    invoke-super {p0}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->onCancelled()V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/MigrationImportBaseTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld1/d;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/MigrationImportBaseTask;->unsetRunningFlag()V

    invoke-super {p0, p1}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/ImportBaseTask;->onPreExecute()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/importing/core/tasks/MigrationImportBaseTask;->setRunningFlag()V

    return-void
.end method

.method public sendProgressEntireRestore(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/MigrationImportBaseTask;->mFromSmartSwitch:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc3/n;->F(I)V

    :cond_0
    return-void
.end method

.method public sendResponseEntireRestore(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/notes/sync/importing/core/tasks/MigrationImportBaseTask;->mFromSmartSwitch:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc3/n;->I(II)V

    :cond_0
    return-void
.end method

.method public abstract setRunningFlag()V
.end method

.method public abstract unsetRunningFlag()V
.end method
