.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->requestVerifyForShare(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

.field public final synthetic val$sharableNotes:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment$2;->val$sharableNotes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->mNotesPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment$2;->val$sharableNotes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->showShareDialog(Ljava/util/ArrayList;Z)V

    return-void
.end method
