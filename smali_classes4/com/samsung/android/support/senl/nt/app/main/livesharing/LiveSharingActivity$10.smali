.class Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$10;
.super Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->importNoteToSpace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener<",
        "Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/data/repository/common/scheduler/callback/OnCompletionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "LS$LiveSharingActivity"

    if-eqz p1, :cond_2

    iget v1, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;->ret:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "importNoteToSpace#onComplete success ret : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;->ret:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newUuid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;->newUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;->newPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v1

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;->newUuid:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "importNoteToSpace#onComplete failed - mainListEntry is null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->s(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setMainListEntry(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v1

    invoke-virtual {v1}, Lf/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setGuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setModeIndex(I)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setToolType(I)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->build()Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    :goto_0
    const-string p1, "importNoteToSpace#onComplete failed"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$10;->this$0:Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;->s(Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;)V

    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity$10;->onComplete(Lcom/samsung/android/support/senl/nt/coedit/caller/updownloader/ImportResult;)V

    return-void
.end method
