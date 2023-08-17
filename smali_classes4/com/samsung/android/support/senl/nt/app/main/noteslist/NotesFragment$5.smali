.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/addons/IAddonsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->getAddonsHandler()Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLockHelper()Lcom/samsung/android/support/senl/nt/app/lock/helper/ILockHelper;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->mNotesPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;->getLockHelper()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/LockHelper;

    move-result-object v0

    return-object v0
.end method

.method public onRequestOpenNote(Ljava/lang/String;)V
    .locals 2

    const-string v0, "NotesFragment"

    const-string v1, "onRequestOpenNote"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->getNoteData(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setMainListEntry(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setGuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->getModeIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setModeIndex(I)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setToolType(I)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setRequestCode(I)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->build()Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment$5;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V

    return-void
.end method

.method public onStubUpdateTaskFinished()V
    .locals 0

    return-void
.end method

.method public onTaskCanceled()V
    .locals 0

    return-void
.end method
