.class public final Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;
.super Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B)\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0008H\u0016J\u0008\u0010\u0012\u001a\u00020\u0008H\u0016J\u0012\u0010\u0013\u001a\u00020\u00102\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0012\u0010\u0018\u001a\u00020\u00102\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u000eH\u0016J(\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u00082\u0006\u0010 \u001a\u00020\u00082\u0006\u0010!\u001a\u00020\u0008H\u0016J\u0008\u0010\"\u001a\u00020\u0010H\u0016J\u0008\u0010#\u001a\u00020\u0010H\u0016J\u001a\u0010#\u001a\u00020\u00102\u0008\u0010$\u001a\u0004\u0018\u00010\u000c2\u0006\u0010%\u001a\u00020\u0008H\u0016R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;",
        "Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;",
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;",
        "context",
        "Landroid/content/Context;",
        "canvasLayout",
        "Landroid/widget/RelativeLayout;",
        "x",
        "",
        "y",
        "(Landroid/content/Context;Landroid/widget/RelativeLayout;II)V",
        "mMenuInfo",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;",
        "mRotateDelegate",
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;",
        "close",
        "",
        "getHorizontalMargin",
        "getVerticalMargin",
        "hide",
        "result",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopupView$IPopupResult;",
        "isVisible",
        "",
        "rotate",
        "event",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;",
        "setRotationDelegate",
        "delegate",
        "setRoundedBackground",
        "radius",
        "bgColor",
        "strokeSize",
        "strokeColor",
        "show",
        "updatePosition",
        "info",
        "subAlign",
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
.field private mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/widget/RelativeLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->close()V

    return-void
.end method

.method public getHorizontalMargin()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public getVerticalMargin()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public hide(Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopupView$IPopupResult;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopupView$IPopupResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->hide()V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getSpoidView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public rotate(Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;)V
    .locals 12
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getSpoidView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getSpoidView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$dimen;->color_spoid_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/spen/R$dimen;->color_spoid_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    div-int/2addr v4, v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getSpoidView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    const-string v7, "null cannot be cast to non-null type android.view.View"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getSpoidView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v7

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;->getTargetAngle()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v8, 0x0

    const-string/jumbo v9, "spoidView"

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eqz v10, :cond_3

    :goto_1
    const/16 v10, 0xb4

    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v10, :cond_6

    :cond_3
    sub-int v10, v0, v2

    if-gtz v10, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getSpoidView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    :goto_2
    invoke-virtual {v0, p0, v4, v5}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->rotate(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;Landroid/view/View;I)V

    goto :goto_3

    :cond_4
    add-int/2addr v0, v2

    add-int/2addr v0, v4

    if-lt v0, v5, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getSpoidView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x8

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getSpoidView()Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0, v4, v8}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->rotate(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;Landroid/view/View;I)V

    :cond_6
    :goto_3
    const/16 v0, 0x5a

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v0, :cond_9

    :goto_4
    const/16 v0, 0x10e

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_c

    :cond_9
    sub-int p1, v1, v2

    if-gtz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getSpoidView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0, v6}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->rotate(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;Landroid/view/View;I)V

    goto :goto_5

    :cond_a
    add-int/2addr v1, v2

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getSpoidView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-lt v1, v7, :cond_b

    invoke-virtual {p1, p0, v0, v3}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->rotate(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;Landroid/view/View;I)V

    goto :goto_5

    :cond_b
    invoke-virtual {p1, p0, v0, v8}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->rotate(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;Landroid/view/View;I)V

    :cond_c
    :goto_5
    return-void
.end method

.method public setRotationDelegate(Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    return-void
.end method

.method public setRoundedBackground(IIII)V
    .locals 0

    return-void
.end method

.method public show()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->show()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getSpoidView()Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "spoidView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->onShow(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public updatePosition()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getSpoidView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->getSpoidView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/spen/R$dimen;->color_spoid_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/spen/R$dimen;->color_spoid_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenRect()Landroid/graphics/Rect;

    move-result-object v4

    add-int/2addr v2, v0

    add-int/2addr v3, v1

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenAlign()I

    move-result v2

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenRect()Landroid/graphics/Rect;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorspoid/SpenColorSpoidLayout;->movePosition(II)V

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenAlign()I

    move-result v2

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenRect()Landroid/graphics/Rect;

    move-result-object v2

    :goto_2
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorAlign()I

    move-result v2

    if-ne v2, v6, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorAlign()I

    move-result v2

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public updatePosition(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;I)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorSpuitPopupView;->updatePosition()V

    return-void
.end method
