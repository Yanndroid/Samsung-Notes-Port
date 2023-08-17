.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;->onDeleteClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onEnd(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/mode/PageListModeEdit;->setBlockOnPageDeleted(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;->getDeletedPageIndexList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;->getDeletedPageIdList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;-><init>(ZLjava/util/List;)V

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->notifyDataRemoved(Ljava/util/List;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager$PageUpdateState;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerSaveModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/ComposerSaveModel;->setAllPageDeleted(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->insertPage(I)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerControllerManager()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerManager;->getScrollController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ScrollController;->alignmentContent(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;->isNeededToCallEndHistory()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getNoteManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->getNote()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->endHistoryGroup()Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;->getPageManager()Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;->getDocPageInfo()Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/page/DocPageInfo;->getCurrentPageIndex()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListDataManager;->onPageIndexChanged(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$Contract;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$Contract;->setBlockThumbnailUpdate(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$Contract;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$Contract;->setMode(I)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDeleteClicked#onError"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$3;->onEnd(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$3;->onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDeleteClicked#onSuccess"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$3;->onEnd(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/list/pages/PageListEditModeMenuPresenter$3;->onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDeletePages$ResultValues;)V

    return-void
.end method
