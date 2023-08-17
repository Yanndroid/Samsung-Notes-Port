.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/task/InflateAsyncTask$TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->setImproveEntryLogic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addInflatedView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->addInflatedView(Landroid/view/View;)V

    return-void
.end method

.method public addSortbarInflatedView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->addSortbarInflatedView(Landroid/view/View;)V

    return-void
.end method

.method public needInflatedView()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView$7;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;->j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/NotesView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->needInflatedView()Z

    move-result v0

    return v0
.end method
