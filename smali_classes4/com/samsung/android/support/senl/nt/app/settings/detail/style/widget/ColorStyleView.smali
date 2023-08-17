.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;
.super Lcom/samsung/android/support/senl/nt/app/settings/common/component/RoundedFrameLayout;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ColorStyleView"


# instance fields
.field private mCurrentColor:I

.field private mCurrentColorIndex:I

.field private mCurrentPaletteId:I

.field private mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

.field private final mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/RoundedFrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/RoundedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/RoundedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/RoundedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->setSelectedColor(II)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->updateDefaultColorLayout()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;)V

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator$OnItemActionListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->getDefaultColor(Landroid/content/Context;)I

    move-result v1

    const-string v2, "settings_page_color"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mCurrentColor:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$layout;->settings_color_style_view:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->page_color_item_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$dimen;->page_color_item_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getDefaultBackgroundInvert()Z

    move-result v2

    const v3, 0x3f91eb85    # 1.14f

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->create(IIFZ)V

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$id;->palette_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$dimen;->page_color_container_margin_top_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->getPaletteContainerViewList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->initSelectedColor()V

    return-void
.end method

.method private initSelectedColor()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->getColorPaletteData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->getColorPaletteData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    iget-object v5, v4, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    array-length v5, v5

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    iget-object v7, v4, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    aget v7, v7, v6

    iget v8, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mCurrentColor:I

    if-ne v7, v8, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->getPaletteContainerViewList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;

    invoke-virtual {v0, v6, v3, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->updatePaletteItem(IZZ)V

    iput v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mCurrentPaletteId:I

    iput v6, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mCurrentColorIndex:I

    return-void

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSelectedColor# if it don\'t find the color position. color : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mCurrentColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ColorStyleView"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->getPaletteContainerViewList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;

    invoke-virtual {v0, v1, v3, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->updatePaletteItem(IZZ)V

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mCurrentPaletteId:I

    iput v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mCurrentColorIndex:I

    return-void
.end method

.method private setSelectedColor(II)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelectedColor# paletteIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorStyleView"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mCurrentPaletteId:I

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mCurrentColorIndex:I

    if-eq v0, p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->getPaletteContainerViewList()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mCurrentPaletteId:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mCurrentColorIndex:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->updatePaletteItem(IZZ)V

    :cond_1
    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mCurrentPaletteId:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mCurrentColorIndex:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->getColorPaletteData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->getColorPaletteData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    array-length v2, v0

    if-le v2, p2, :cond_2

    aget v0, v0, p2

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mCurrentColor:I

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->getPaletteContainerViewList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;

    invoke-virtual {v0, p2, v1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->updatePaletteItem(IZZ)V

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->getColor(Landroid/content/Context;II)I

    move-result v1

    const-string v2, "settings_page_color"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    const-string p1, "a"

    goto :goto_0

    :cond_3
    const-string p1, "b"

    :goto_0
    const-string p2, "510"

    const-string v0, "5817"

    invoke-static {p2, v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateDefaultColorLayout()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mPalette:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/BackgroundColorUtil;->getDefaultBackgroundInvert()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->updateDefaultColorLayout(Z)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/style/widget/ColorStyleView;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
