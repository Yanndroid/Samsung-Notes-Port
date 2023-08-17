.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchMode$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/common/listener/OnBackKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchMode;->showSearchView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchMode;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackKeyDown()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchMode;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchMode;->mNotesSearchView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchMode$3;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchMode;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SearchMode;->onBackKeyDown()Z

    const/4 v0, 0x1

    return v0
.end method
