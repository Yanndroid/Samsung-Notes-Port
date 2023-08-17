.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/common/IBaseListContract$ISearchPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;-><init>(Landroid/app/Activity;Landroid/view/View;ZLcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$Contract;)V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public minimizeSoftInput(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->minimizeSoftInput(Landroid/view/View;)V

    return-void
.end method

.method public onClearClicked()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    const-string v1, "8167"

    goto :goto_0

    :cond_0
    const-string v0, "504"

    const-string v1, "3575"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNavigateUpClicked()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$Contract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$Contract;->hideSearchMode()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "0"

    const-string v1, "8166"

    goto :goto_0

    :cond_0
    const-string v0, "504"

    const-string v1, "3574"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;->setSearchStartState()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->getSearchPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->search(Ljava/lang/String;)V

    return-void
.end method

.method public showSoftInput(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->showSoftInput(Landroid/view/View;)V

    return-void
.end method

.method public submitSearchKeyword(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/list/pages/PageListSearchModeLayout;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListPresenter;->getSearchPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListSearch;->submitSearchKeyword(Ljava/lang/String;)V

    return-void
.end method
