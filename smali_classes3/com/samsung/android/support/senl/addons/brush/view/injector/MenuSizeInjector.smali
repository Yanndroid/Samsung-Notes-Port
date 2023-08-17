.class public final Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008@\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u0014\u0010\u000e\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0008R\u001a\u0010\u0010\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0008\"\u0004\u0008\u0012\u0010\nR\u001a\u0010\u0013\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0008\"\u0004\u0008\u0015\u0010\nR\u001a\u0010\u0016\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0008\"\u0004\u0008\u0018\u0010\nR\u001a\u0010\u0019\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0008\"\u0004\u0008\u001b\u0010\nR\u001a\u0010\u001c\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u0008\"\u0004\u0008\u001e\u0010\nR\u001a\u0010\u001f\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0008\"\u0004\u0008!\u0010\nR\u001a\u0010\"\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0008\"\u0004\u0008$\u0010\nR\u001a\u0010%\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0008\"\u0004\u0008\'\u0010\nR\u001a\u0010(\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u0008\"\u0004\u0008*\u0010\nR\u001a\u0010+\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u0008\"\u0004\u0008-\u0010\nR\u001a\u0010.\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0008\"\u0004\u00080\u0010\nR\u001a\u00101\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u0008\"\u0004\u00083\u0010\nR\u001a\u00104\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u0008\"\u0004\u00086\u0010\nR\u001a\u00107\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u0008\"\u0004\u00089\u0010\nR\u001a\u0010:\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010\u0008\"\u0004\u0008<\u0010\nR\u001a\u0010=\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010\u0008\"\u0004\u0008?\u0010\nR\u001a\u0010@\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010\u0008\"\u0004\u0008B\u0010\nR\u001a\u0010C\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010\u0008\"\u0004\u0008E\u0010\n\u00a8\u0006F"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;",
        "Lcom/samsung/android/support/senl/addons/brush/model/menu/IMenuSizeInjector;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "doneButtonHeightPx",
        "",
        "getDoneButtonHeightPx",
        "()I",
        "setDoneButtonHeightPx",
        "(I)V",
        "doneButtonWidthPx",
        "getDoneButtonWidthPx",
        "setDoneButtonWidthPx",
        "minWidth",
        "getMinWidth",
        "panningBarHeightPx",
        "getPanningBarHeightPx",
        "setPanningBarHeightPx",
        "panningBarHorizontalMarginBottomPx",
        "getPanningBarHorizontalMarginBottomPx",
        "setPanningBarHorizontalMarginBottomPx",
        "panningBarHorizontalMarginEndPx",
        "getPanningBarHorizontalMarginEndPx",
        "setPanningBarHorizontalMarginEndPx",
        "panningBarVerticalMarginBottomPx",
        "getPanningBarVerticalMarginBottomPx",
        "setPanningBarVerticalMarginBottomPx",
        "panningBarVerticalMarginEndPx",
        "getPanningBarVerticalMarginEndPx",
        "setPanningBarVerticalMarginEndPx",
        "panningBarVerticalPaddingEndPx",
        "getPanningBarVerticalPaddingEndPx",
        "setPanningBarVerticalPaddingEndPx",
        "panningBarWidthPx",
        "getPanningBarWidthPx",
        "setPanningBarWidthPx",
        "penUpButtonWidthHeightPx",
        "getPenUpButtonWidthHeightPx",
        "setPenUpButtonWidthHeightPx",
        "subMenuStrokeSizePx",
        "getSubMenuStrokeSizePx",
        "setSubMenuStrokeSizePx",
        "toolbarChildButtonMarginPx",
        "getToolbarChildButtonMarginPx",
        "setToolbarChildButtonMarginPx",
        "toolbarChildButtonSizePx",
        "getToolbarChildButtonSizePx",
        "setToolbarChildButtonSizePx",
        "toolbarHeightPx",
        "getToolbarHeightPx",
        "setToolbarHeightPx",
        "toolbarIconMarginPx",
        "getToolbarIconMarginPx",
        "setToolbarIconMarginPx",
        "toolbarLandMarginBottomPx",
        "getToolbarLandMarginBottomPx",
        "setToolbarLandMarginBottomPx",
        "toolbarMarginBottomPx",
        "getToolbarMarginBottomPx",
        "setToolbarMarginBottomPx",
        "toolbarWidthPx",
        "getToolbarWidthPx",
        "setToolbarWidthPx",
        "zoomTextMargiTopPx",
        "getZoomTextMargiTopPx",
        "setZoomTextMargiTopPx",
        "zoomTextMarginEndPx",
        "getZoomTextMarginEndPx",
        "setZoomTextMarginEndPx",
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
.field private doneButtonHeightPx:I

.field private doneButtonWidthPx:I

.field private final minWidth:I

.field private panningBarHeightPx:I

.field private panningBarHorizontalMarginBottomPx:I

.field private panningBarHorizontalMarginEndPx:I

.field private panningBarVerticalMarginBottomPx:I

.field private panningBarVerticalMarginEndPx:I

.field private panningBarVerticalPaddingEndPx:I

.field private panningBarWidthPx:I

.field private penUpButtonWidthHeightPx:I

.field private subMenuStrokeSizePx:I

.field private toolbarChildButtonMarginPx:I

.field private toolbarChildButtonSizePx:I

.field private toolbarHeightPx:I

.field private toolbarIconMarginPx:I

.field private toolbarLandMarginBottomPx:I

.field private toolbarMarginBottomPx:I

.field private toolbarWidthPx:I

.field private zoomTextMargiTopPx:I

.field private zoomTextMarginEndPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->zoomTextMarginEndPx:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->zoomTextMargiTopPx:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarWidthPx:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarHeightPx:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->penUpButtonWidthHeightPx:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->doneButtonWidthPx:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->doneButtonHeightPx:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarVerticalPaddingEndPx:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarVerticalMarginEndPx:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarVerticalMarginBottomPx:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarHorizontalMarginEndPx:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarHorizontalMarginBottomPx:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarWidthPx:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarHeightPx:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarChildButtonSizePx:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarChildButtonMarginPx:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarMarginBottomPx:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarLandMarginBottomPx:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarIconMarginPx:I

    iput v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->subMenuStrokeSizePx:I

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/TabletUtil;->isTabletUi()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_zoom_percentage_view_margin_end_tablet:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setZoomTextMarginEndPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_zoom_percentage_view_margin_top_tablet:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setZoomTextMargiTopPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_panningbar_guideview_width_tablet:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setPanningBarWidthPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_panningbar_guideview_height_tablet:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setPanningBarHeightPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_panningbar_guideview_vert_padding_end_tablet:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setPanningBarVerticalPaddingEndPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_panningbar_guideview_vert_margin_end_tablet:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setPanningBarVerticalMarginEndPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_panningbar_guideview_vert_margin_bottom_tablet:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setPanningBarVerticalMarginBottomPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_panningbar_guideview_horiz_margin_end_tablet:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setPanningBarHorizontalMarginEndPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_panningbar_guideview_horiz_margin_bottom_tablet:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setPanningBarHorizontalMarginBottomPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_toolbar_icon_margin_bottom:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setToolbarMarginBottomPx(I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->getToolbarMarginBottomPx()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setToolbarLandMarginBottomPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_toolbar_icon_margin_left_right_tablet:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setToolbarIconMarginPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_penup_layout_size_tablet:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setPenUpButtonWidthHeightPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_sub_menu_layout_done_width_tablet:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setDoneButtonWidthPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_sub_menu_layout_height_tablet:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setDoneButtonHeightPx(I)V

    sget v2, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_sub_menu_layout_width_tablet:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setToolbarWidthPx(I)V

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setToolbarHeightPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_toolbar_item_size_tablet:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setToolbarChildButtonSizePx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_toolbar_item_margin_tablet:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setToolbarChildButtonMarginPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_menu_stroke_size:I

    goto/16 :goto_0

    :cond_0
    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_zoom_percentage_view_margin_end:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setZoomTextMarginEndPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_zoom_percentage_view_margin_top:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setZoomTextMargiTopPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_panningbar_guideview_width:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setPanningBarWidthPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_panningbar_guideview_height:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setPanningBarHeightPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_panningbar_guideview_vert_padding_end:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setPanningBarVerticalPaddingEndPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_panningbar_guideview_vert_margin_end:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setPanningBarVerticalMarginEndPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_panningbar_guideview_vert_margin_bottom:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setPanningBarVerticalMarginBottomPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_panningbar_guideview_horiz_margin_end:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setPanningBarHorizontalMarginEndPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->base_panningbar_guideview_horiz_margin_bottom:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setPanningBarHorizontalMarginBottomPx(I)V

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setPanningBarHorizontalMarginBottomPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_toolbar_icon_margin_bottom:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setToolbarMarginBottomPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_toolbar_icon_margin_bottom_phone_land:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setToolbarLandMarginBottomPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_toolbar_icon_margin_left_right:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setToolbarIconMarginPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_penup_layout_size:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setPenUpButtonWidthHeightPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_sub_menu_layout_done_width:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setDoneButtonWidthPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_sub_menu_layout_height:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setDoneButtonHeightPx(I)V

    sget v2, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_sub_menu_layout_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setToolbarWidthPx(I)V

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setToolbarHeightPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_toolbar_item_size:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setToolbarChildButtonSizePx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_toolbar_item_margin:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setToolbarChildButtonMarginPx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_toolbar_item_stroke_size:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->setSubMenuStrokeSizePx(I)V

    sget p1, Lcom/samsung/android/support/senl/addons/R$dimen;->brush_menu_min_tablet_width:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->minWidth:I

    return-void
.end method


# virtual methods
.method public getDoneButtonHeightPx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->doneButtonHeightPx:I

    return v0
.end method

.method public getDoneButtonWidthPx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->doneButtonWidthPx:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->minWidth:I

    return v0
.end method

.method public getPanningBarHeightPx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarHeightPx:I

    return v0
.end method

.method public getPanningBarHorizontalMarginBottomPx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarHorizontalMarginBottomPx:I

    return v0
.end method

.method public getPanningBarHorizontalMarginEndPx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarHorizontalMarginEndPx:I

    return v0
.end method

.method public getPanningBarVerticalMarginBottomPx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarVerticalMarginBottomPx:I

    return v0
.end method

.method public getPanningBarVerticalMarginEndPx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarVerticalMarginEndPx:I

    return v0
.end method

.method public getPanningBarVerticalPaddingEndPx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarVerticalPaddingEndPx:I

    return v0
.end method

.method public getPanningBarWidthPx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarWidthPx:I

    return v0
.end method

.method public getPenUpButtonWidthHeightPx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->penUpButtonWidthHeightPx:I

    return v0
.end method

.method public getSubMenuStrokeSizePx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->subMenuStrokeSizePx:I

    return v0
.end method

.method public getToolbarChildButtonMarginPx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarChildButtonMarginPx:I

    return v0
.end method

.method public getToolbarChildButtonSizePx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarChildButtonSizePx:I

    return v0
.end method

.method public getToolbarHeightPx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarHeightPx:I

    return v0
.end method

.method public getToolbarIconMarginPx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarIconMarginPx:I

    return v0
.end method

.method public getToolbarLandMarginBottomPx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarLandMarginBottomPx:I

    return v0
.end method

.method public getToolbarMarginBottomPx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarMarginBottomPx:I

    return v0
.end method

.method public getToolbarWidthPx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarWidthPx:I

    return v0
.end method

.method public getZoomTextMargiTopPx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->zoomTextMargiTopPx:I

    return v0
.end method

.method public getZoomTextMarginEndPx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->zoomTextMarginEndPx:I

    return v0
.end method

.method public setDoneButtonHeightPx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->doneButtonHeightPx:I

    return-void
.end method

.method public setDoneButtonWidthPx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->doneButtonWidthPx:I

    return-void
.end method

.method public setPanningBarHeightPx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarHeightPx:I

    return-void
.end method

.method public setPanningBarHorizontalMarginBottomPx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarHorizontalMarginBottomPx:I

    return-void
.end method

.method public setPanningBarHorizontalMarginEndPx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarHorizontalMarginEndPx:I

    return-void
.end method

.method public setPanningBarVerticalMarginBottomPx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarVerticalMarginBottomPx:I

    return-void
.end method

.method public setPanningBarVerticalMarginEndPx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarVerticalMarginEndPx:I

    return-void
.end method

.method public setPanningBarVerticalPaddingEndPx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarVerticalPaddingEndPx:I

    return-void
.end method

.method public setPanningBarWidthPx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->panningBarWidthPx:I

    return-void
.end method

.method public setPenUpButtonWidthHeightPx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->penUpButtonWidthHeightPx:I

    return-void
.end method

.method public setSubMenuStrokeSizePx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->subMenuStrokeSizePx:I

    return-void
.end method

.method public setToolbarChildButtonMarginPx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarChildButtonMarginPx:I

    return-void
.end method

.method public setToolbarChildButtonSizePx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarChildButtonSizePx:I

    return-void
.end method

.method public setToolbarHeightPx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarHeightPx:I

    return-void
.end method

.method public setToolbarIconMarginPx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarIconMarginPx:I

    return-void
.end method

.method public setToolbarLandMarginBottomPx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarLandMarginBottomPx:I

    return-void
.end method

.method public setToolbarMarginBottomPx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarMarginBottomPx:I

    return-void
.end method

.method public setToolbarWidthPx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->toolbarWidthPx:I

    return-void
.end method

.method public setZoomTextMargiTopPx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->zoomTextMargiTopPx:I

    return-void
.end method

.method public setZoomTextMarginEndPx(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/addons/brush/view/injector/MenuSizeInjector;->zoomTextMarginEndPx:I

    return-void
.end method
