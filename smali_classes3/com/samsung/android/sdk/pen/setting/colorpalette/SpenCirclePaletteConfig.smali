.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig;


# instance fields
.field private mColorPalette:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

.field private mPickerButtonIdx:I

.field private mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

.field private mRecentIndexList:[I

.field private mRecentIndicatorSize:I

.field private mRecentPageIndex:I

.field private mSettingButtonIdx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mRecentIndexList:[I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/spen/R$dimen;->setting_color_palette_recent_indicator_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mRecentIndicatorSize:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mRecentPageIndex:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mColorPalette:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method private adjustTableIndex()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mColorPalette:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x5

    aput-object v3, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mColorPalette:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mColorPalette:Ljava/util/List;

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mRecentIndexList:[I

    return-void

    :array_0
    .array-data 4
        0x8
        0x6
        0x4
        0x2
        0x0
        0x9
        0x7
        0x5
        0x3
        0x1
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mColorPalette:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getButtonType(II)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;
    .locals 1

    if-gez p1, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->NONE:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    return-object p1

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mRecentPageIndex:I

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->isEyedropperButton(I)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->EYEDROPPER:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->NONE:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    :goto_0
    return-object p1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->getPickerButtonIdx()I

    move-result p1

    if-ne p2, p1, :cond_3

    sget-object p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->PICKER:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->getSettingButtonIdx()I

    move-result p1

    if-ne p2, p1, :cond_4

    sget-object p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->SETTING:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    return-object p1

    :cond_4
    sget-object p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->NONE:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    return-object p1
.end method

.method public getColorIdxList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mColorPalette:Ljava/util/List;

    return-object v0
.end method

.method public getPickerButtonIdx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mPickerButtonIdx:I

    return v0
.end method

.method public getSettingButtonIdx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mSettingButtonIdx:I

    return v0
.end method

.method public hasPickerButton(I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mRecentPageIndex:I

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public initDefinedPalette(ILcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;)V
    .locals 3
    .param p2    # Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->setPaletteVisibleColor(ILcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mPickerButtonIdx:I

    sget v1, Lcom/samsung/android/spen/R$drawable;->note_handwriting_setting_color_01:I

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_color_picker:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setResource(IIII)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mSettingButtonIdx:I

    sget v1, Lcom/samsung/android/spen/R$drawable;->note_handwriting_setting_color_02:I

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_select_color_set_to_show:I

    invoke-interface {p2, p1, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setResource(IIII)V

    return-void
.end method

.method public initRecentPalette(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mRecentIndexList:[I

    sget v2, Lcom/samsung/android/spen/R$drawable;->color_circle_eyedropper:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->initPage([II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->updateColor()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/spen/R$drawable;->note_ic_recent:I

    const-string v2, "#BABABA"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/samsung/android/spen/R$drawable;->note_ic_recent_selected:I

    const-string v4, "#808080"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilImage;->getDrawableSelected(Landroid/content/Context;IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mRecentIndicatorSize:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/spen/R$string;->pen_string_palette_recent:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v0, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setIndicator(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mRecentPageIndex:I

    :cond_1
    :goto_0
    return-void
.end method

.method public initTable(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;)Z
    .locals 1
    .param p1    # Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->getSwipeChildIndex()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mColorPalette:Ljava/util/List;

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->getFixedChildIndex()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->adjustTableIndex()V

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mPickerButtonIdx:I

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mSettingButtonIdx:I

    return p2
.end method

.method public isPickerButton(II)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->hasPickerButton(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->getPickerButtonIdx()I

    move-result p1

    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public setPaletteVisibleColor(ILcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;)V
    .locals 5
    .param p2    # Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    invoke-static {v2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    new-instance v2, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;-><init>()V

    iget-object v3, p2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    aget v3, v3, v1

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    iget-object v4, p2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->names:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->setColor([FILjava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mColorPalette:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, p1, v4, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->setColor(IILcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setRecentIndicatorSize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenCirclePaletteConfig;->mRecentIndicatorSize:I

    return-void
.end method

.method public setReverseMode(Z)V
    .locals 0

    return-void
.end method
