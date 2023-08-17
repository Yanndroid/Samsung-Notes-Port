.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView$ChangeTemplatesViewContract;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mChangeTemplatesViewContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView$ChangeTemplatesViewContract;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ChangeTemplateView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/CTLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView$ChangeTemplatesViewContract;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;-><init>(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->mChangeTemplatesViewContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView$ChangeTemplatesViewContract;

    return-void
.end method

.method private checkToNeedEditImageTemplate(ILjava/lang/String;II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mImageTabView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->getIsApplyToAllChecked()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mImageTabView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->getPageToChangeType()I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getNextPageWidth()I

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getNextPageHeight()I

    move-result v2

    invoke-direct {p0, p3, p4, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->isNotSameRatio(IIII)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getNextPageWidth()I

    move-result p3

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getNextPageRatioHeight()I

    move-result p4

    :goto_0
    invoke-virtual {p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->onOpenTemplateEditor(Ljava/lang/String;II)V

    return v1

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getPageWidth()I

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getPageHeight()I

    move-result v2

    invoke-direct {p0, p3, p4, p1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->isNotSameRatio(IIII)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getPageWidth()I

    move-result p3

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getPageRatioHeight()I

    move-result p4

    goto :goto_0

    :cond_3
    :goto_2
    return v0
.end method

.method private isNotSameRatio(IIII)Z
    .locals 4

    if-nez p3, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->TAG:Ljava/lang/String;

    const-string p2, "isNotSameRatio# pageWidth is 0"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->equalPageRatio(IIII)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNotSameRatio# true "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " != "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method


# virtual methods
.method public hidePdfTab()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->mChangeTemplatesViewContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView$ChangeTemplatesViewContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView$ChangeTemplatesViewContract;->hidePdfTab()V

    return-void
.end method

.method public initialize(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->TAG:Ljava/lang/String;

    const-string v1, "initialize# bundle"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->initialize(Landroid/os/Bundle;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mSelectedTemplateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->mChangeTemplatesViewContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView$ChangeTemplatesViewContract;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/select/SelectedTemplateData;->getSelectedTemplateType()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/constants/TemplateViewType;->isPdfType(I)Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView$ChangeTemplatesViewContract;->onPageChange(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->mChangeTemplatesViewContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView$ChangeTemplatesViewContract;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView$ChangeTemplatesViewContract;->setResultFinish(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCancel()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancel# getApplyToAll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mImageTabView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->getIsApplyToAllChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", getPageToChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mImageTabView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->getPageToChangeType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mImageTabView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->getIsApplyToAllChecked()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->setResultFinish(ILandroid/content/Intent;)V

    return v2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->onCancelTemplateItem()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->setResultFinish(ILandroid/content/Intent;)V

    return v2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mImageTabView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->getIsApplyToAllChecked()Z

    move-result v1

    const-string v2, "template_apply_to_all"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->setResultFinish(ILandroid/content/Intent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onSelectItem(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectItem# templateIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;->INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;->onSelectTemplate(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->setSelectedTemplateData(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->loadItemData()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "template_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "template_essential_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mImageTabView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->getIsApplyToAllChecked()Z

    move-result p1

    const-string v1, "template_apply_to_all"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getPageIndex()I

    move-result p1

    const-string v1, "template_page_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mImageTabView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->getIsPageToChangeOptionVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mImageTabView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->getPageToChangeType()I

    move-result p1

    const-string v1, "template_page_to_change"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->setResultFinish(ILandroid/content/Intent;)V

    return-void
.end method

.method public onSelectItem(ILjava/lang/String;II)V
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectItem# path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getIsSingleMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/constants/TemplateViewType;->isPdfType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$string;->settings_can_not_apply_pdf_template_when_infinite_scrolling_page_style_applied:I

    invoke-static {p1, p2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->checkToNeedEditImageTemplate(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;->INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/util/sa/SAManager;->onSelectTemplate(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->setSelectedTemplateData(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/ChangeTemplatesPresenter;->loadItemData()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "template_type"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x3

    const-string v3, "template_page_to_change"

    const-string v4, "template_apply_to_all"

    if-ne p1, v2, :cond_4

    const-string p1, "template_image_result"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mImageTabView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->getIsApplyToAllChecked()Z

    move-result p1

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mImageTabView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->getIsPageToChangeOptionVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mImageTabView:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/tab/ImageTemplateView;->getPageToChangeType()I

    move-result p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/BaseTemplateView;->mViewStateData:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/data/state/ViewStateData;->getDefaultPageRatio()F

    move-result p1

    invoke-static {p3, p4, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerPageRatio;->getPageRatio(IIF)F

    move-result p1

    const-string p2, "template_image_ratio"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    const-string p1, "template_pdf_result"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->setResultFinish(ILandroid/content/Intent;)V

    return-void
.end method

.method public setResultFinish(ILandroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResultFinish# resultCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const-string v1, "template_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView;->mChangeTemplatesViewContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView$ChangeTemplatesViewContract;

    invoke-interface {p2, p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/ChangeTemplateView$ChangeTemplatesViewContract;->setResultFinish(ILandroid/content/Intent;)V

    return-void
.end method
