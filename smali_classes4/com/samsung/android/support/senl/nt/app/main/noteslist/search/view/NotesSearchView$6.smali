.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->postQuery(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

.field public final synthetic val$query:Ljava/lang/CharSequence;

.field public final synthetic val$submit:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;Ljava/lang/CharSequence;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$6;->val$query:Ljava/lang/CharSequence;

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$6;->val$submit:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$6;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$6;->val$query:Ljava/lang/CharSequence;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView$6;->val$submit:Z

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method
