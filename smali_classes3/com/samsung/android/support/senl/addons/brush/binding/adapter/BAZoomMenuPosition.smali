.class public final Lcom/samsung/android/support/senl/addons/brush/binding/adapter/BAZoomMenuPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u0018\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/binding/adapter/BAZoomMenuPosition;",
        "",
        "()V",
        "TAG",
        "",
        "setZoomMenuPosition",
        "",
        "view",
        "Landroid/view/View;",
        "info",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;",
        "setZoomTextPosition",
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
.field public static final INSTANCE:Lcom/samsung/android/support/senl/addons/brush/binding/adapter/BAZoomMenuPosition;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/binding/adapter/BAZoomMenuPosition;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/brush/binding/adapter/BAZoomMenuPosition;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/binding/adapter/BAZoomMenuPosition;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/binding/adapter/BAZoomMenuPosition;

    const-string v0, "BAZoomMenuPosition"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createBrushTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/binding/adapter/BAZoomMenuPosition;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setZoomMenuPosition(Landroid/view/View;Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_toolbar_zoom_btn_menu_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletUi()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p2

    if-eq p2, v2, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.view.View"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    new-instance v5, Landroid/graphics/Rect;

    sub-int/2addr v4, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v3

    invoke-direct {v5, v6, v3, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v3, v5, Landroid/graphics/Rect;->left:I

    iget v4, v5, Landroid/graphics/Rect;->top:I

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v6, v7}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v0

    iget v3, v5, Landroid/graphics/Rect;->left:I

    iget v4, v5, Landroid/graphics/Rect;->top:I

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v3, v4, v6, v5}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v3

    if-nez v0, :cond_5

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v3, v4, :cond_6

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    :goto_2
    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/binding/adapter/BAZoomMenuPosition;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateZoomMenuPosition. Overlapped menu."

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr p2, v2

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p2

    if-eq p2, v2, :cond_8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_3

    :cond_8
    :goto_4
    return-void
.end method

.method public final setZoomTextPosition(Landroid/view/View;Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;)V
    .locals 10
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getPenRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/IBrushMenuInfo;->getColorRect()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_7

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletUi()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/addons/R$dimen;->base_zoom_percentage_view_margin_end_tablet:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/addons/R$dimen;->base_zoom_percentage_view_margin_top_tablet:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/addons/R$dimen;->base_zoom_percentage_view_margin_end:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/addons/R$dimen;->base_zoom_percentage_view_margin_top:I

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.view.View"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    if-nez v5, :cond_4

    :cond_3
    invoke-virtual {p1, v6, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    :cond_4
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v8

    if-nez v8, :cond_5

    sub-int v4, v3, v4

    sub-int/2addr v4, v2

    sub-int/2addr v3, v2

    add-int/2addr v5, v1

    invoke-virtual {v7, v4, v1, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_5
    sub-int/2addr v4, v2

    add-int/2addr v5, v1

    invoke-virtual {v7, v4, v1, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    iget v3, v7, Landroid/graphics/Rect;->left:I

    iget v4, v7, Landroid/graphics/Rect;->top:I

    iget v5, v7, Landroid/graphics/Rect;->right:I

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v8}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v3

    iget v4, v7, Landroid/graphics/Rect;->left:I

    iget v5, v7, Landroid/graphics/Rect;->top:I

    iget v8, v7, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v4, v5, v8, v9}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v3, :cond_7

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move v3, v6

    goto :goto_3

    :cond_7
    :goto_2
    move v3, v5

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v8, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v8, v9, :cond_8

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    goto :goto_4

    :cond_8
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    :goto_4
    if-eqz v3, :cond_b

    iget v3, v7, Landroid/graphics/Rect;->left:I

    iget v5, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v8

    iget v6, v7, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v5, v6, v9}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v3

    if-nez v3, :cond_9

    iget v3, v7, Landroid/graphics/Rect;->left:I

    iget v5, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v8

    iget v6, v7, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v3, v5, v6, v9}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v3

    if-nez v3, :cond_9

    add-int/2addr v1, v8

    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/binding/adapter/BAZoomMenuPosition;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "updateZoomTextPosition. Overlapped menu 1."

    goto :goto_5

    :cond_9
    iget v3, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v8

    iget v5, v7, Landroid/graphics/Rect;->top:I

    iget v6, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v8

    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v5, v6, v9}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v8

    iget v3, v7, Landroid/graphics/Rect;->top:I

    iget v5, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v8

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, v0, v3, v5, v6}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result p2

    if-nez p2, :cond_a

    add-int/2addr v2, v8

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/binding/adapter/BAZoomMenuPosition;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "updateZoomTextPosition. Overlapped menu 2."

    goto :goto_5

    :cond_a
    add-int/2addr v1, v8

    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v8

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    sget-object p1, Lcom/samsung/android/support/senl/addons/brush/binding/adapter/BAZoomMenuPosition;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "updateZoomTextPosition. Overlapped menu 3."

    :goto_5
    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    sget-object p2, Lcom/samsung/android/support/senl/addons/brush/binding/adapter/BAZoomMenuPosition;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateZoomTextPosition. Not overlapped menu."

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq p2, v1, :cond_c

    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v6, v5

    :cond_c
    invoke-virtual {v4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p2

    if-eq p2, v2, :cond_d

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_6

    :cond_d
    move v5, v6

    :goto_6
    if-eqz v5, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_e
    :goto_7
    return-void
.end method
