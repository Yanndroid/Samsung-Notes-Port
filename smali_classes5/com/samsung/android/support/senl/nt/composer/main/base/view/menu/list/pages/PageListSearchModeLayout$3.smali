.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/search/RecentSearchKeywordAdapter$IDataManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->getSearchPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->deleteSearchKeyword(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public deleteAll()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->getSearchPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->deleteAllSearchKeyword()V

    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;->getPageSearchEditView()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->getSearchPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->submitSearchKeyword(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;->getPageSearchEditView()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/common/ListSearchView;->getPageSearchEditView()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method
