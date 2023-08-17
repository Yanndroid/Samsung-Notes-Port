.class public abstract Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseWidgetSettingPresenter"


# instance fields
.field public mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private updateTheme()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getDarkMode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->getCurrentBackgroundColor(Landroid/content/Context;II)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getModel()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getModel()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getReverseTransparency()I

    move-result v3

    invoke-static {v2, v3, v0}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->checkTheme(Landroid/content/Context;II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->setTheme(I)V

    return-void
.end method


# virtual methods
.method public cancelAndFinish()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method public checkValidWidget()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getModel()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "BaseWidgetSettingPresenter"

    const-string v1, "widget id invalid"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->cancelAndFinish()V

    :cond_0
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getModel()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getDarkMode()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getModel()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getDarkMode()I

    move-result v0

    return v0
.end method

.method public abstract getModel()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;
.end method

.method public getReverseTransparency()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getModel()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getReverseTransparency()I

    move-result v0

    return v0
.end method

.method public getTheme()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getModel()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getTheme()I

    move-result v0

    return v0
.end method

.method public getTransparency()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getModel()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getTransparency()I

    move-result v0

    return v0
.end method

.method public abstract getView()Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;
.end method

.method public getWidgetId()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getModel()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getWidgetId()I

    move-result v0

    return v0
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public onBackgroundColorCheckChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackgroundColorCheckChanged. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseWidgetSettingPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getModel()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->updateTheme()V

    return-void
.end method

.method public onDarkModeSwitchChanged(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDarkModeSwitchChanged.  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseWidgetSettingPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getModel()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->setDarkMode(I)V

    if-eqz p1, :cond_0

    const-string p1, "a"

    goto :goto_0

    :cond_0
    const-string p1, "b"

    :goto_0
    const-string v0, "616"

    const-string v1, "6130"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->updateTheme()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getView()Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;->updateWidgetSettingDarkMode()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getModel()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTransparencyChanged(I)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTransparencyChanged. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseWidgetSettingPresenter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getModel()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->setTransparency(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getBackgroundColor()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getDarkMode()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->getCurrentBackgroundColor(Landroid/content/Context;II)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getTheme()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getReverseTransparency()I

    move-result v4

    invoke-static {v3, v2, v4, v0}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->isChangedTheme(Landroid/content/Context;III)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTransparencyChanged change theme. "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getModel()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;

    move-result-object v0

    const/4 v1, 0x1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->setTheme(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getView()Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;->updateWidgetPreviewTheme()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getModel()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->getReverseTransparency()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/widget/util/BaseWidgetUtils;->convertAlpha(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getView()Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;->updateWidgetPreviewAlpha(I)V

    int-to-long v0, p1

    const-string p1, "616"

    const-string v2, "6127"

    invoke-static {p1, v2, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public abstract saveAndFinish()V
.end method

.method public abstract setView(Lcom/samsung/android/support/senl/nt/base/widget/setting/view/BaseWidgetSettingContract;)V
.end method

.method public showCancelDialog()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->getModel()Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/model/BaseWidgetSettingModel;->isWidgetContentChanged()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BaseWidgetSettingPresenter"

    const-string v1, "showCancelDialog widget does not changed"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->cancelAndFinish()V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$string;->base_string_popup_ask_save:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$string;->string_discard:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;)V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$string;->base_string_save_type1:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter$2;-><init>(Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;)V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$string;->dialog_cancel:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter$3;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter$3;-><init>(Lcom/samsung/android/support/senl/nt/base/widget/setting/presenter/BaseWidgetSettingPresenter;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
