.class public final Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;
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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0001\u0018\u0000 \'2\u00020\u00012\u00020\u0002:\u0001\'B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0011\u001a\u00020\u0006H\u0002J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u000bH\u0016J\u0008\u0010\u0015\u001a\u00020\u000bH\u0002J\u0008\u0010\u0016\u001a\u00020\u000bH\u0016J\u0012\u0010\u0017\u001a\u00020\u00132\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0018\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000bH\u0002J\u0008\u0010\u001d\u001a\u00020\u0006H\u0016J\u0012\u0010\u001e\u001a\u00020\u00132\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020\rH\u0016J\u0008\u0010#\u001a\u00020\u0013H\u0016J\u0008\u0010$\u001a\u00020\u0013H\u0016J\u001a\u0010$\u001a\u00020\u00132\u0008\u0010%\u001a\u0004\u0018\u00010\t2\u0006\u0010&\u001a\u00020\u000bH\u0016R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006("
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;",
        "Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;",
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;",
        "context",
        "Landroid/content/Context;",
        "needSeekBarStroke",
        "",
        "(Landroid/content/Context;Z)V",
        "mMenuInfo",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;",
        "mPenPopupAlign",
        "",
        "mRotateDelegate",
        "Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;",
        "pivotByPenMenuAlign",
        "getPivotByPenMenuAlign",
        "()I",
        "canShowPenPopupForEndAlign",
        "close",
        "",
        "getHorizontalMargin",
        "getPenPopupMarginForCenterAlign",
        "getVerticalMargin",
        "hide",
        "result",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/settings/ISettingPopupView$IPopupResult;",
        "isStart",
        "align",
        "position",
        "isVisible",
        "rotate",
        "event",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;",
        "setRotationDelegate",
        "delegate",
        "show",
        "updatePosition",
        "info",
        "subAlign",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mPenPopupAlign:I

.field private mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView$Companion;

    const-string v0, "PenSettingPopupView"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;-><init>(Landroid/content/Context;Z)V

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

.method private final canShowPenPopupForEndAlign()Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1, v1}, Landroid/widget/FrameLayout;->measure(II)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenAlign()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    :goto_0
    sget-object v3, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canShowPenPopupForEndAlign. vR="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " >= pR"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private final getPenPopupMarginForCenterAlign()I
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1, v1}, Landroid/widget/FrameLayout;->measure(II)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "penSetting. width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenRect()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenAlign()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    :goto_0
    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-gez v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    const-string v7, "null cannot be cast to non-null type android.view.View"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/View;

    const-string v7, " popupRadius="

    const-string v8, "[LTR] Not enough space. so make margin= 0 center="

    if-nez v6, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int/2addr v5, v4

    if-gez v5, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    if-le v6, v9, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "width="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result margin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private final getPivotByPenMenuAlign()I
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenAlign()I

    move-result v0

    const/16 v2, 0x9

    const-string v3, "Pen align : RIGHT"

    const/16 v4, 0xa

    const-string v5, "Pen align : LEFT"

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-eqz v0, :cond_a

    const-string v11, "Pen align : TOP"

    const-string v12, "Pen align : BOTTOM"

    if-eq v0, v10, :cond_8

    if-eq v0, v6, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    goto/16 :goto_5

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->TAG:Ljava/lang/String;

    const-string v1, "Pen menu align : TOP"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mPenPopupAlign:I

    if-ne v1, v9, :cond_2

    invoke-static {v0, v5}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v1, v7

    goto/16 :goto_5

    :cond_2
    if-ne v1, v10, :cond_3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move v1, v10

    goto :goto_5

    :cond_4
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->TAG:Ljava/lang/String;

    const-string v1, "Pen menu align : LEFT"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mPenPopupAlign:I

    if-ne v2, v9, :cond_7

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletUi()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    invoke-static {v0, v11}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    :goto_1
    invoke-static {v0, v12}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    if-ne v2, v10, :cond_d

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletUi()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_8
    const/16 v1, 0x8

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->TAG:Ljava/lang/String;

    const-string v3, "Pen menu align : RIGHT"

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mPenPopupAlign:I

    if-ne v3, v9, :cond_9

    invoke-static {v0, v12}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v1, v4

    goto :goto_5

    :cond_9
    if-ne v3, v10, :cond_d

    invoke-static {v0, v11}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v1, v2

    goto :goto_5

    :cond_a
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->TAG:Ljava/lang/String;

    const-string v1, "Pen menu align : BOTTOM"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mPenPopupAlign:I

    if-ne v1, v9, :cond_b

    invoke-static {v0, v5}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    move v1, v8

    goto :goto_5

    :cond_b
    if-ne v1, v10, :cond_c

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    move v1, v6

    :cond_d
    :goto_5
    return v1
.end method

.method private final isStart(II)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    if-eq p2, v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletUi()Z

    move-result v2

    if-nez v2, :cond_3

    if-ne p1, v0, :cond_3

    xor-int/lit8 v1, v1, 0x1

    :cond_3
    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isStart ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenSettingLayout;->close()V

    return-void
.end method

.method public getHorizontalMargin()I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenAlign()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenAlign()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public getVerticalMargin()I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenAlign()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenAlign()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
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

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->getPivotByPenMenuAlign()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->rotate(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;I)V

    :cond_0
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->getPivotByPenMenuAlign()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->onShow(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;I)V

    :cond_0
    return-void
.end method

.method public updatePosition()V
    .locals 9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    if-eqz v1, :cond_2

    sget-object v2, Lcom/samsung/android/support/senl/addons/brush/view/popup/SettingPopupViewUtils;->Companion:Lcom/samsung/android/support/senl/addons/brush/view/popup/SettingPopupViewUtils$Companion;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/SettingPopupViewUtils$Companion;->resetPopupParams(Landroid/widget/RelativeLayout$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenAlign()I

    move-result v5

    iget v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mPenPopupAlign:I

    invoke-direct {p0, v5, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->isStart(II)Z

    move-result v1

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mPenPopupAlign:I

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->getPenPopupMarginForCenterAlign()I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->canShowPenPopupForEndAlign()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mPenPopupAlign:I

    invoke-direct {p0, v5, v1}, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->isStart(II)Z

    move-result v1

    :cond_1
    :goto_0
    move v7, v1

    move v8, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_setting_popup_layout_between_space:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sget v4, Lcom/samsung/android/support/senl/addons/R$id;->popup_pen_view:I

    move-object v3, v0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/support/senl/addons/brush/view/popup/SettingPopupViewUtils$Companion;->setPopupParams(Landroid/widget/RelativeLayout$LayoutParams;IIIZI)V

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public updatePosition(Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;I)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePenSetting. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mMenuInfo:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;

    iput p2, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mPenPopupAlign:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->updatePosition()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->mRotateDelegate:Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/PenSettingPopupView;->getPivotByPenMenuAlign()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p0, p2, v0}, Lcom/samsung/android/support/senl/addons/brush/view/popup/RotationDelegate;->rotate(Lcom/samsung/android/support/senl/addons/brush/view/popup/IBrushSettingPopupView;IZ)V

    :cond_0
    return-void
.end method
