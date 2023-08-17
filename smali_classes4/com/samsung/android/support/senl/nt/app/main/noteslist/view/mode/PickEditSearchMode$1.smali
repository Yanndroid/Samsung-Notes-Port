.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode;->initSearchHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotesSearchView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode;->mNotesSearchView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    return-object v0
.end method

.method public hasSearchView()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode;->mNotesSearchView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/NotesPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/DataMapper;->clearCheckedData()V

    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSearchEnterClick()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/PickEditSearchMode;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void
.end method
