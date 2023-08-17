.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9$1;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$9;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;->saveToInternalMemory(Landroid/content/Context;)V

    const/4 p1, 0x0

    return-object p1
.end method
