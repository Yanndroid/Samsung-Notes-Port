.class public Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0011\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0014J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J\u0008\u0010\t\u001a\u00020\u0007H\u0014J\u0008\u0010\n\u001a\u00020\u0007H\u0014J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\n\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016J\u0006\u0010\u0017\u001a\u00020\u000cJ\u0008\u0010\u0018\u001a\u00020\u000eH\u0016J\u0008\u0010\u0019\u001a\u00020\u000eH\u0016J\u0008\u0010\u001a\u001a\u00020\u0013H\u0016J\u0008\u0010\u001b\u001a\u00020\u0013H\u0016J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u000eH\u0016J\u0010\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u000eH\u0016J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0005J\u0010\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0013H\u0016J\u0010\u0010$\u001a\u00020\u00072\u0006\u0010%\u001a\u00020\u000eH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;",
        "()V",
        "mPenModel",
        "Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;",
        "clearModels",
        "",
        "close",
        "closeCallbacks",
        "closeSubViewModels",
        "getAlpha",
        "",
        "getAlphaColor",
        "",
        "getColor",
        "getInfo",
        "Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;",
        "getIsShowMask",
        "",
        "getPenClass",
        "",
        "getPenName",
        "getPenSize",
        "getPosition",
        "getSize",
        "hasAlpha",
        "isSelected",
        "setAlpha",
        "alphaColor",
        "setColor",
        "color",
        "setPenModel",
        "penModel",
        "setSelected",
        "selected",
        "setSize",
        "size",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private mPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public clearModels()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;->getOBSV_VM_PEN_DESTORYED()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->close()V

    return-void
.end method

.method public closeCallbacks()V
    .locals 0

    return-void
.end method

.method public closeSubViewModels()V
    .locals 0

    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->mPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getAlphaColor()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->mPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getAlphaColor()I

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->mPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getColor()I

    move-result v0

    return v0
.end method

.method public getInfo()Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingUIPenInfo;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->getPenClass()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->getAlphaColor()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->color:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->sizeLevel:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/sdk/pen/SpenSettingPenInfo;->particleDensity:I

    return-object v0
.end method

.method public getIsShowMask()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->mPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->mPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPenClass()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->mPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPenName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->mPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getPenSize()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->mPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getPenSize()F

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->mPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->getPosition()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->mPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getSize()I

    move-result v0

    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->mPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->hasAlpha()Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->mPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getSelected()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->mPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->setAlpha(F)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->mPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/color/IBaseColorModel;->setColor(I)V

    :cond_0
    return-void
.end method

.method public final setPenModel(Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "penModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->mPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    return-object p0
.end method

.method public setSelected(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->mPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->mPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->getSelected()Z

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->mPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->setSelected(Z)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;->getOBSV_VM_PEN_CHANGED()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/IPenViewModel$Companion;->getOBSV_VM_PEN_RESELECTED()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/penviews/PenViewModel;->mPenModel:Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/model/pen/IPenModel;->setPenSize(I)V

    return-void
.end method
