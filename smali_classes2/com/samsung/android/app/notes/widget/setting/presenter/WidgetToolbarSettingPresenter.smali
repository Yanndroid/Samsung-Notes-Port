.class public Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetToolbarSettingPresenter;
.super Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;
.source "SourceFile"


# instance fields
.field private mContract:Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;

.field private mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetToolbarSettingModel;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcom/samsung/android/app/notes/widget/setting/model/WidgetToolbarSettingModel;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/notes/widget/setting/model/WidgetToolbarSettingModel;-><init>(Landroid/os/Bundle;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetToolbarSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetToolbarSettingModel;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->checkValidWidget()V

    return-void
.end method


# virtual methods
.method public getModel()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetToolbarSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetToolbarSettingModel;

    return-object v0
.end method

.method public getView()Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetToolbarSettingPresenter;->mContract:Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public saveAndFinish()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetToolbarSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetToolbarSettingModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->isWidgetContentChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetToolbarSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetToolbarSettingModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetToolbarSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetToolbarSettingModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getTransparency()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetToolbarSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetToolbarSettingModel;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getBackgroundColor()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetToolbarSettingPresenter;->mModel:Lcom/samsung/android/app/notes/widget/setting/model/WidgetToolbarSettingModel;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getDarkMode()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/notes/widget/WidgetToolbarBroadCast;->sendUpdateWidgetToolbarBroadcast(Landroid/content/Context;IIII)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public setView(Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/widget/setting/presenter/WidgetToolbarSettingPresenter;->mContract:Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;

    invoke-interface {p1, p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;->setPresenter(Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;)V

    return-void
.end method
