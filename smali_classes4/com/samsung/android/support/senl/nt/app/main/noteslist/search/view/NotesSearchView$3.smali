.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x42

    if-eq p2, p1, :cond_0

    const/16 p1, 0xa0

    if-ne p2, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchEnterClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$OnSearchEnterClickListener;->onSearchEnterClick()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
