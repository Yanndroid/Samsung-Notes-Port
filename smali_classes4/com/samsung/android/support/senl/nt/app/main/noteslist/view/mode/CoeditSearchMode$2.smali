.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/SearchHelper$ViewContract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;->initSearchHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotesSearchView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;->mNotesSearchView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    return-object v0
.end method

.method public hasSearchView()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;->mNotesSearchView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;->mNotesSearchView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->setSkipQuery(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;->p(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;->getModeIndex()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x1a

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;->showRecentSearch(Z)V

    return v3
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;->p(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;->insertRecentSearchKeyword(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSearchEnterClick()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;->p(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;

    iget-object v1, v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;->mNotesSearchView:Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/search/view/NotesSearchView;->getSearchBoxText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/impl/SearchModeView;->insertRecentSearchKeyword(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/CoeditSearchMode;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/BaseMode;->mRecyclerView:Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    return-void
.end method
