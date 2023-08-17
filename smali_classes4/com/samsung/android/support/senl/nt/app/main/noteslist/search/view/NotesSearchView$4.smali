.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;)Lcom/samsung/android/support/senl/nt/app/common/listener/OnBackKeyListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$4;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;)Lcom/samsung/android/support/senl/nt/app/common/listener/OnBackKeyListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/common/listener/OnBackKeyListener;->onBackKeyDown()Z

    :cond_0
    return-void
.end method
