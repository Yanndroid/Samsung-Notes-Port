.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState$OnCanUseTextOnlyModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$OnTextOnlyModeDisabledListener;
    }
.end annotation


# instance fields
.field private mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private final mHandler:Landroid/os/Handler;

.field private mOnTextOnlyModeDisabledListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$OnTextOnlyModeDisabledListener;

.field private mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;

    return-object p0
.end method


# virtual methods
.method public init(Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getTextOnlyModeState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;->setOnCanUseTextOnlyModeChangeListener(Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState$OnCanUseTextOnlyModeChangeListener;)V

    return-void
.end method

.method public onCanUseChanged(ZI)V
    .locals 2

    if-nez p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->isOnMainUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->setTextOnlyEnable(Z)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->mOnTextOnlyModeDisabledListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$OnTextOnlyModeDisabledListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$OnTextOnlyModeDisabledListener;->onTextOnlyModeDisabled(I)V

    :cond_1
    return-void
.end method

.method public setOnTextOnlyModeDisabledListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$OnTextOnlyModeDisabledListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->mOnTextOnlyModeDisabledListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$OnTextOnlyModeDisabledListener;

    return-void
.end method

.method public setTextOnlyEnable(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getTextOnlyModeState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;->isEnableTextOnlyMode()Z

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;->isEnableTextOnlyMode()Z

    move-result v0

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getTextOnlyModeState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;->setIsEnableTextOnlyMode(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getTextOnlyModeState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;->getLastTextScale()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getTextOnlyModeState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;

    invoke-interface {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;->getScale()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;->setLastZoomScale(F)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getTextOnlyModeState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/common/TextOnlyModeState;->getLastZoomScale()F

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;

    invoke-interface {v2, p1, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;->setEnableTextOnlyMode(ZFLcom/samsung/android/sdk/pen/text/SpenTextScaleListener;)V

    return-void
.end method

.method public setView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->mView:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/ComposerControllerContract;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/TextOnlyModeController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
