.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$8;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$8;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$8;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$8$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;->setActive(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$8$1;->this$1:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$8;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$8;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/EntryImprovementManager;->loadInternalMemory(Landroid/content/Context;)V

    return-void
.end method
