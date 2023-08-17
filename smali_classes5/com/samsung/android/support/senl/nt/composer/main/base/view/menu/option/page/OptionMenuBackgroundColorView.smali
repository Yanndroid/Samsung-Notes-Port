.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;
    }
.end annotation


# static fields
.field private static final DISABLED_ALPHA:F = 0.1f

.field private static final ENABLED_ALPHA:F = 1.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentColor:I

.field private mCurrentColorIndex:I

.field private mCurrentInvert:Z

.field private mCurrentPaletteId:I

.field private mInvertLayout:Landroid/view/View;

.field private mInvertSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

.field private mPaletteContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;

.field private mPaletteIndicator:Lcom/google/android/material/tabs/TabLayout;

.field private mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;

.field private mPreviousColor:I

.field private mPreviousInvert:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OptionMenuBackgroundColor"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentPaletteId:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentColorIndex:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentInvert:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;)Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPaletteContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;)Lcom/google/android/material/tabs/TabLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPaletteIndicator:Lcom/google/android/material/tabs/TabLayout;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->onInvertChanged(Z)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->selectTab(I)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->setSelectedColor(II)V

    return-void
.end method

.method public static bridge synthetic h()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initInvertLayout(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->invert_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mInvertLayout:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->updateInvertLayout()V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->invert_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mInvertSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$5;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->invert_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$6;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initPalette(Landroid/view/View;)V
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator$OnItemActionListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;

    invoke-interface {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->background_color_rect_chip_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->background_color_rect_chip_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getDefaultBackgroundInvert()Z

    move-result v3

    const v4, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->create(IIFZ)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->palette_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPaletteIndicator:Lcom/google/android/material/tabs/TabLayout;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->palette_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPaletteContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;->setActionListener(Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper$ViewFlipperActionListener;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->getPaletteContainerViewList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;

    invoke-interface {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->background_color_palette_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPaletteContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->setting_color_palette_page_indicator_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPaletteIndicator:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v1

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;

    invoke-interface {v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    div-int/lit8 v0, v0, 0x2

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v0, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->color_palette_v70_default_indicator:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPaletteIndicator:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->initSelectedColor()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->setUntouchableTab()V

    return-void
.end method

.method private initSelectedColor()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->getColorPaletteData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->getColorPaletteData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    iget-object v4, v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    array-length v4, v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    iget-object v6, v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    aget v6, v6, v5

    iget v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentColor:I

    if-ne v6, v7, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->getPaletteContainerViewList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;

    const/4 v3, 0x1

    invoke-virtual {v0, v5, v3, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->updatePaletteItem(IZZ)V

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->selectTab(I)V

    iput v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentPaletteId:I

    iput v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentColorIndex:I

    return-void

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSelectedColor# if it don\'t find the color position. color : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentPaletteId:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentColorIndex:I

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->selectTab(I)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->initPalette(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->initInvertLayout(Landroid/view/View;)V

    return-void
.end method

.method private onInvertChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mInvertSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentInvert:Z

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentInvert:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->updateDefaultColorLayout(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;->getBackgroundColorInvertPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundColorInvertPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundColorInvertPresenter;->invertBackgroundColor(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;->notifyChanged()V

    if-eqz p1, :cond_1

    const-string p1, "1"

    goto :goto_0

    :cond_1
    const-string p1, "0"

    :goto_0
    const-string v0, "401"

    const-string v1, "3524"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private selectTab(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectTab "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPaletteContainer:Lcom/samsung/android/support/senl/nt/base/winset/view/SwipeViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPaletteIndicator:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method

.method private setSelectedColor(II)V
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelectedColor# paletteId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", colorIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentPaletteId:I

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentColorIndex:I

    if-eq v0, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->getPaletteContainerViewList()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentPaletteId:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentColorIndex:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->updatePaletteItem(IZZ)V

    :cond_1
    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentPaletteId:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentColorIndex:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->getColorPaletteData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->getColorPaletteData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    array-length v2, v0

    if-le v2, p2, :cond_2

    aget v0, v0, p2

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentColor:I

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->getPaletteContainerViewList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;

    invoke-virtual {p1, p2, v1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->updatePaletteItem(IZZ)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentColor:I

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;->setBackgroundColor(I)V

    return-void
.end method

.method private setUntouchableTab()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPaletteIndicator:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->clearOnTabSelectedListeners()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPaletteIndicator:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getTouchables()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v4, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$4;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move v2, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateInvertLayout()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mInvertLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mInvertLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;->isCoeditNote()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentInvert:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->TAG:Ljava/lang/String;

    const-string v2, "updateInvertLayout # the invert button does not support in coedit note."

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mInvertLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;->getBackgroundColorInvertPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundColorInvertPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundColorInvertPresenter;->canEnableInvertLayout()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mInvertLayout:Landroid/view/View;

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$id;->invert_switch:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentInvert:Z

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3dcccccd    # 0.1f

    if-eqz v0, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mInvertLayout:Landroid/view/View;

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$id;->invert_text:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;)V
    .locals 0

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;

    sget p3, Lcom/samsung/android/support/senl/nt/composer/R$layout;->comp_page_setting_bg_layout:I

    invoke-static {p1, p3, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;->getBackgroundColor()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPreviousColor:I

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView$Presenter;->getBackgroundColorInvertPresenter()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundColorInvertPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/common/BackgroundColorInvertPresenter;->isBackgroundColorInverted()Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPreviousInvert:Z

    iget p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mPreviousColor:I

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentColor:I

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->mCurrentInvert:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/page/OptionMenuBackgroundColorView;->initView(Landroid/view/View;)V

    return-void
.end method
