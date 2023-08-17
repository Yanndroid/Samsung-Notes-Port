.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$INoteFragment;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerNoteFragmentBixby2()Lcom/samsung/android/support/notes/bixby/bixby2/contract/INoteFragmentBixby2;
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->setActivity(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    iget-object v2, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->mNotesView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->mNotesPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteFragmentBixby2;->setNoteListObject(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;)V

    return-object v0
.end method
