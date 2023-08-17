.class public final Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u000fJ\u0008\u0010\u0011\u001a\u00020\u0012H\u0002J\u0008\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0014\u001a\u00020\r2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\u0010\u0010\u0017\u001a\u00020\r2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000bJ\u0006\u0010\u0019\u001a\u00020\rJ\u0006\u0010\u001a\u001a\u00020\rJ\u0010\u0010\u001a\u001a\u00020\r2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\tR\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;",
        "",
        "context",
        "Landroid/content/Context;",
        "popup",
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;",
        "(Landroid/content/Context;Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;)V",
        "mColorPopup",
        "mMenuInfo",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;",
        "mRotateDelegate",
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;",
        "close",
        "",
        "getHorizontalMargin",
        "",
        "getVerticalMargin",
        "isNeedAdditionalHorizontalMargin",
        "",
        "isNeedAdditionalVerticalMargin",
        "rotate",
        "event",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;",
        "setRotationDelegate",
        "delegate",
        "show",
        "updatePosition",
        "info",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mColorPopup:Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;
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
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mColorPopup:Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;

    new-instance p2, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;

    invoke-direct {p2, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mColorPopup:Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->getRadius()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->getStrokeSize()I

    move-result v2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuLayoutInjector;->getStrokeColor()I

    move-result p2

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;->setRoundedBackground(IIII)V

    :cond_0
    return-void
.end method

.method private final isNeedAdditionalHorizontalMargin()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorAlign()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v3, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    return v1
.end method

.method private final isNeedAdditionalVerticalMargin()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorAlign()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mColorPopup:Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    return-void
.end method

.method public final getHorizontalMargin()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mColorPopup:Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->isNeedAdditionalHorizontalMargin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method public final getVerticalMargin()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mColorPopup:Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->isNeedAdditionalVerticalMargin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    return v1
.end method

.method public final rotate(Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mColorPopup:Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;->access$getPivotByColorMenuAlign(Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->rotate(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;I)V

    :cond_0
    return-void
.end method

.method public final setRotationDelegate(Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    return-void
.end method

.method public final show()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mColorPopup:Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mColorPopup:Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;->access$getPivotByColorMenuAlign(Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->onShow(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;I)V

    :cond_1
    return-void
.end method

.method public final updatePosition()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mColorPopup:Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    if-eqz v2, :cond_1

    sget-object v3, Lcom/samsung/android/support/senl/addons/brush/view/popup/SettingPopupViewUtils;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/popup/SettingPopupViewUtils$Companion;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/SettingPopupViewUtils$Companion;->resetPopupParams(Landroid/widget/RelativeLayout$LayoutParams;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorAlign()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_setting_popup_layout_between_space:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v5, Lcom/samsung/android/support/senl/addons/R$id;->popup_color_view:I

    sget-object v2, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;

    invoke-static {v2, v6}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;->access$isColorPopupStartOrTop(Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;I)Z

    move-result v8

    const/4 v9, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/support/senl/addons/brush/view/popup/SettingPopupViewUtils$Companion;->setPopupParams(Landroid/widget/RelativeLayout$LayoutParams;IIIZI)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updatePosition(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->updatePosition()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mColorPopup:Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;->access$getPivotByColorMenuAlign(Lcom/samsung/android/support/senl/addons/brush/view/popup/ColorPopupViewDelegate$Companion;Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->rotate(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;IZ)V

    :cond_0
    return-void
.end method
