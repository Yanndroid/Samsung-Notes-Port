.class Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;
.super Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenPenSettingUI;


# static fields
.field private static final DEFAULT_COLOR:I = -0x1000000

.field private static final TAG:Ljava/lang/String; = "SpenMiniColorControl"


# instance fields
.field private mBgDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

.field private mColorChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;

.field private mColorItem:Landroid/widget/ImageView;

.field private mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

.field private mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

.field private mContext:Landroid/content/Context;

.field private mCurrentColorUIInfo:I

.field private mCurrentHSVColor:[F

.field private mCurrentPaletteID:I

.field private mInitComplete:Z

.field private mIsSupportEyedropper:Z

.field private mItemString:Ljava/lang/String;

.field private mNormalView:Landroid/widget/FrameLayout;

.field private mPaletteActionButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;

.field private mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;

.field private mPaletteIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentColorChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;

.field private mRecentColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;"
        }
    .end annotation
.end field

.field private mViewMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mCurrentHSVColor:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mInitComplete:Z

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mViewMode:I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mCurrentColorUIInfo:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/spen/R$string;->pen_string_pen_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mItemString:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->initData(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;)[F
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mCurrentHSVColor:[F

    return-object p0
.end method

.method public static synthetic access$102(Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mCurrentColorUIInfo:I

    return p1
.end method

.method public static synthetic access$200(Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->updateColorItem()V

    return-void
.end method

.method public static synthetic access$300(Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;)Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;)Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mPaletteActionButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;

    return-object p0
.end method

.method private getCurrentVisibleColor()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mCurrentHSVColor:[F

    const/16 v1, 0xff

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->HSVToColor(I[F)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getColor(I)I

    move-result v0

    return v0
.end method

.method private getItemId()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->getViewOrientation()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_pen_color_attr_mini_land_layout:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/spen/R$layout;->setting_pen_color_attr_mini_layout:I

    :goto_0
    return v0
.end method

.method private getPopupDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->mini_pen_sub_popup_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->getViewOrientation()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    move v1, v3

    move v2, v1

    move v3, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v0

    move v2, v3

    move v0, v2

    move v3, v1

    goto :goto_0

    :cond_2
    move v2, v0

    move v1, v3

    :goto_0
    new-instance v4, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    invoke-direct {v4}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mContext:Landroid/content/Context;

    sget v6, Lcom/samsung/android/spen/R$color;->mini_setting_sub_popup_bg:I

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5, v6, v6}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setDrawableInfo(IIII)V

    invoke-virtual {v4, v0, v3, v1, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setRectRadius(FFFF)V

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->makeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    return-object v0
.end method

.method private getPopupLayoutId()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->getViewOrientation()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/spen/R$layout;->setting_mini_color_land_layout:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/spen/R$layout;->setting_mini_color_layout:I

    :goto_0
    return v0
.end method

.method private initData(Z)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mCurrentPaletteID:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mIsSupportEyedropper:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mPaletteIDs:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mPaletteIDs:Ljava/util/List;

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mRecentColors:Ljava/util/List;

    return-void
.end method

.method private initItemView()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->getItemId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mNormalView:Landroid/widget/FrameLayout;

    sget v1, Lcom/samsung/android/spen/R$id;->color_item:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorItem:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mItemString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorItem:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mItemString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_rect_chip_unselected_outline_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mContext:Landroid/content/Context;

    sget v2, Lcom/samsung/android/spen/R$color;->setting_color_rect_chip_unselected_outline_color:I

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v1

    new-instance v2, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mBgDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    const/4 v3, 0x1

    const/high16 v4, -0x1000000

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setDrawableInfo(IIII)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorItem:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mBgDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->makeDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initPopupView(ZLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->getPopupLayoutId()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, p1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;-><init>(Landroid/content/Context;Ljava/util/List;ZI)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->getPopupDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getColorTheme()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setColorTheme(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setPaletteList(Ljava/util/List;)Z

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$1;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setOnColorChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$2;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setOnPaletteSwipeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnPaletteSwipeListener;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    new-instance p2, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl$3;-><init>(Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setOnActionButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;)V

    return-void
.end method

.method private setColorData(I[F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mCurrentHSVColor:[F

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mCurrentColorUIInfo:I

    return-void
.end method

.method private updateColorItem()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorItem:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->getCurrentVisibleColor()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setColor(Landroid/graphics/drawable/Drawable;I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mBgDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->isAdaptiveColor(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;->setStroke(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private updateColorPopup()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mCurrentColorUIInfo:I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mCurrentHSVColor:[F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setColor(I[F)V

    return-void
.end method


# virtual methods
.method public addRecentColor([F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->addRecentColor([F)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mRecentColorChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->getRecentColor()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;->onRecentColorChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public clearView()V
    .locals 2

    const-string v0, "SpenMiniColorControl"

    const-string v1, "clearView()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorItem:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mNormalView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    return-void
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;->close()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mItemString:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mViewMode:I

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mInitComplete:Z

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->clearView()V

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->initData(Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mBgDrawableHelper:Lcom/samsung/android/sdk/pen/setting/util/SpenGradientDrawableHelper;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mInitComplete:Z

    return-void
.end method

.method public getNormalView(Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mInitComplete:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mNormalView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->initItemView()V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorItem:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->updateColorItem()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mNormalView:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method public getPopupView()Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mInitComplete:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mIsSupportEyedropper:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mPaletteIDs:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->initPopupView(ZLjava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mRecentColors:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setRecentColor(Ljava/util/List;)Z

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->updateColorPopup()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    return-object v0
.end method

.method public getViewMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mViewMode:I

    return v0
.end method

.method public initView(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mIsSupportEyedropper:Z

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->setPalette(Ljava/util/List;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mInitComplete:Z

    return-void
.end method

.method public restoreViewState()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->hasRestoreState()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mCurrentPaletteID:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setPalette(I)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->setRestoreState(Z)V

    return-void
.end method

.method public saveViewState()V
    .locals 2

    const-string v0, "SpenMiniColorControl"

    const-string v1, "saveViewState()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mInitComplete:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->getPalette()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mCurrentPaletteID:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenPenMiniViewControl;->setRestoreState(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setColor(I[F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->setColorData(I[F)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->getViewMode()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->updateColorItem()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->updateColorPopup()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->updateColorPopup()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->updateColorItem()V

    :goto_0
    return-void
.end method

.method public setColorTheme(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->getColorTheme()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorThemeUtil:Lcom/samsung/android/sdk/pen/setting/color/SpenColorThemeUtil;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/util/color/SpenColorThemeUtil;->setColorTheme(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setColorTheme(I)V

    :cond_0
    return-void
.end method

.method public setCurrentPalette(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setPalette(I)V

    :cond_0
    return-void
.end method

.method public setEyedropperColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setEyedropperColor(I)V

    :cond_0
    return-void
.end method

.method public setNormalViewTooltip(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorItem:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mItemString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilHover;->setHoverText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setOnColorChangeListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorChangedListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnColorChangeListener;

    return-void
.end method

.method public setPalette(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mPaletteIDs:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mPaletteIDs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setPaletteList(Ljava/util/List;)Z

    return-void
.end method

.method public setPaletteActionButtonListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mPaletteActionButtonListener:Lcom/samsung/android/sdk/pen/setting/colorpalette/OnActionButtonListener;

    return-void
.end method

.method public setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mPaletteActionListener:Lcom/samsung/android/sdk/pen/setting/SpenPaletteActionListener;

    return-void
.end method

.method public setPickerColor([F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setPickerColor([F)V

    :cond_0
    return-void
.end method

.method public setRecentColor(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenHSVColor;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mRecentColors:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mRecentColors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setRecentColor(Ljava/util/List;)Z

    return-void
.end method

.method public setRecentColorChangedListener(Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mRecentColorChangedListener:Lcom/samsung/android/sdk/pen/setting/SpenRecentColorChangedListener;

    return-void
.end method

.method public setViewMode(IZ)V
    .locals 3

    iget-boolean p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mInitComplete:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mViewMode:I

    if-eq p2, p1, :cond_3

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mColorPopup:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p2, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectColorLayout;->setFlipperEnabled(Z)V

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/SpenMiniColorControl;->mViewMode:I

    :cond_3
    return-void
.end method
