.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuFingerDrawingSpenChangeablePresenter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuFingerDrawingPresenter;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsClear:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OptionMenuFingerDrawingSpenChangeablePresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuFingerDrawingSpenChangeablePresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuFingerDrawingPresenter;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuFingerDrawingSpenChangeablePresenter;->mIsClear:Z

    return-void
.end method


# virtual methods
.method public blockSmartTip()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuFingerDrawingSpenChangeablePresenter;->getSmartTipState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuFingerDrawingSpenChangeablePresenter;->setSmartTipState(I)V

    :cond_0
    return-void
.end method

.method public getSmartTipState()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuFingerDrawingPresenter;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    const-string v2, "OptionMenuSmartTipPref"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/smarttip/SmartTipsPreferenceManager;->getSmartTipsPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public onAttachView(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuFingerDrawingPresenter;->onAttachView(Landroid/app/Activity;)V

    iget-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuFingerDrawingSpenChangeablePresenter;->mIsClear:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuFingerDrawingSpenChangeablePresenter;->getSmartTipState()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuFingerDrawingSpenChangeablePresenter;->setSmartTipState(I)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuFingerDrawingSpenChangeablePresenter;->TAG:Ljava/lang/String;

    const-string v0, "onAttachView# NONE state"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuFingerDrawingSpenChangeablePresenter;->mIsClear:Z

    return-void
.end method

.method public onDetachView()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuFingerDrawingPresenter;->onDetachView()V

    return-void
.end method

.method public setSmartTipState(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuFingerDrawingPresenter;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuFingerDrawingSpenChangeablePresenter;->TAG:Ljava/lang/String;

    const-string v0, "mActivity is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "OptionMenuSmartTipPref"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/winset/smarttip/SmartTipsPreferenceManager;->setSmartTipsPreference(Landroid/content/Context;Ljava/lang/String;I)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuFingerDrawingSpenChangeablePresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmartTipState#. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
