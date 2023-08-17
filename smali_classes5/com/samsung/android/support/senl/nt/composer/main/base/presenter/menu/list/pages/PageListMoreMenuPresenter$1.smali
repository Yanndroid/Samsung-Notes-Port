.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;->onPaste(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

.field public final synthetic val$changeMode:I

.field public final synthetic val$index:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$1;->val$index:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$1;->val$changeMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;)V
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->showErrorToast()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->setAutoScrollToCursorOnLayoutChanged(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getCurrentPageIndex()I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->forceSetCurrentPageIndex(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->setCurrentPageIndex(IZ)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$1;->onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$1;->val$index:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->forceSetCurrentPageIndex(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$1;->val$index:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->goToPage(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$1;->val$changeMode:I

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$1;->val$index:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListComposerModeHelper;->setCursorAfterEditModeChange(II)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;->isUpdateInvertBG()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->updateInvertBackgroundColor()Z

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getTextManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/TextManager;->setAutoScrollToCursorOnLayoutChanged(Z)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListMoreMenuPresenter$1;->onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPaste$ResultValues;)V

    return-void
.end method
