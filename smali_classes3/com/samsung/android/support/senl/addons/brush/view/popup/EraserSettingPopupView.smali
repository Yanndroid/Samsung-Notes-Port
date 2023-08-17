.class public final Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;
.super Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;
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
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016J\u0012\u0010\u0013\u001a\u00020\u000f2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0006H\u0016J\u0012\u0010\u0017\u001a\u00020\u000f2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u000f2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\rH\u0016J\u0008\u0010\u001e\u001a\u00020\u000fH\u0016J\u0008\u0010\u001f\u001a\u00020\u000fH\u0016J\u001a\u0010\u001f\u001a\u00020\u000f2\u0008\u0010 \u001a\u0004\u0018\u00010\u000b2\u0006\u0010!\u001a\u00020\u0011H\u0016R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;",
        "Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;",
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;",
        "context",
        "Landroid/content/Context;",
        "needSeekBarStroke",
        "",
        "(Landroid/content/Context;Z)V",
        "mBottomClickListener",
        "Landroid/view/View$OnClickListener;",
        "mMenuInfo",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;",
        "mRotateDelegate",
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;",
        "close",
        "",
        "getHorizontalMargin",
        "",
        "getVerticalMargin",
        "hide",
        "result",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopupView$IPopupResult;",
        "isVisible",
        "rotate",
        "event",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;",
        "setBottomClickListener",
        "listener",
        "setRotationDelegate",
        "delegate",
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
.field private mBottomClickListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/samsung/android/support/senl/addons/R$string;->pen_string_clear_all:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/b;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/b;-><init>(Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;)V

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->setBottomButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->getRadius()I

    move-result p1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->getStrokeSize()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->getStrokeColor()I

    move-result p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->setRoundedBackground(IIII)V

    return-void
.end method

.method private static final _init_$lambda-0(Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->mBottomClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->_init_$lambda-0(Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->close()V

    return-void
.end method

.method public getHorizontalMargin()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

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

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

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

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

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
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->rotate(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;I)V

    :cond_0
    return-void
.end method

.method public final setBottomClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->mBottomClickListener:Landroid/view/View$OnClickListener;

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

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->onShow(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;I)V

    :cond_0
    return-void
.end method

.method public updatePosition()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_setting_popup_spen_eraser_layout_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_setting_popup_spen_eraser_layout_margin_bottom_land:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletUi()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_setting_popup_spen_eraser_layout_margin_bottom_tablet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v2, v1

    move v3, v5

    :cond_2
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorAlign()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move v3, v5

    :goto_1
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_4

    int-to-float v0, v3

    :goto_2
    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    neg-int v0, v3

    int-to-float v0, v0

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method public updatePosition(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;I)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/EraserSettingPopupView;->updatePosition()V

    return-void
.end method
