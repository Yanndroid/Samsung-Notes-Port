.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;
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

.field private mIndicatorSelectedColor:I

.field private mIndicatorUnselectedColor:I

.field private mIsReverseMode:Z

.field private mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

.field private mPickerButtonIdx:I

.field private mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

.field private mRecentIndicatorSize:I

.field private mRecentPageIndex:I

.field private mSettingButtonIdx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mIsReverseMode:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mRecentPageIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mColorPalette:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/spen/R$dimen;->setting_color_palette_recent_indicator_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mRecentIndicatorSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    sget v0, Lcom/samsung/android/spen/R$color;->setting_palette_indicator_unselected_color:I

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mIndicatorUnselectedColor:I

    sget v0, Lcom/samsung/android/spen/R$color;->setting_palette_indicator_selected_color:I

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mIndicatorSelectedColor:I

    return-void
.end method

.method private getColorSettingResourceId()I
    .locals 2

    sget v0, Lcom/samsung/android/spen/R$drawable;->note_handwriting_setting_rect_drawable:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getPaletteCornerRadius()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->getPaletteOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/samsung/android/spen/R$drawable;->color_rect_setting_icon_bottom_round:I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    sget v0, Lcom/samsung/android/spen/R$drawable;->color_rect_setting_icon_right_round:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/samsung/android/spen/R$drawable;->color_rect_setting_icon_left_round:I

    :cond_4
    :goto_1
    return v0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mColorPalette:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getButtonType(II)Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;
    .locals 1

    if-gez p1, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->NONE:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    return-object p1

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mRecentPageIndex:I

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->getPickerButtonIdx()I

    move-result p1

    if-ne p2, p1, :cond_1

    sget-object p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->PICKER:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->NONE:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    :goto_0
    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->isEyedropperButton(I)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;->EYEDROPPER:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteConfig$ButtonType;

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->getSettingButtonIdx()I

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

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mColorPalette:Ljava/util/List;

    return-object v0
.end method

.method public getPickerButtonIdx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mPickerButtonIdx:I

    return v0
.end method

.method public getSettingButtonIdx()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mSettingButtonIdx:I

    return v0
.end method

.method public hasPickerButton(I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mRecentPageIndex:I

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

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->setPaletteVisibleColor(ILcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;)V

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mPickerButtonIdx:I

    sget v1, Lcom/samsung/android/spen/R$drawable;->color_rect_picker_icon:I

    sget v2, Lcom/samsung/android/spen/R$string;->pen_string_color_picker:I

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setResource(IIII)V

    return-void
.end method

.method public initRecentPalette(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sget v2, Lcom/samsung/android/spen/R$drawable;->note_handwriting_eyedropper_rect_drawable:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->initPage([II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;->updateColor()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/spen/R$drawable;->note_ic_recent_selected:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mIndicatorUnselectedColor:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mIndicatorSelectedColor:I

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/util/SpenSettingUtilImage;->getVectorDrawableSelected(Landroid/content/Context;III)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mRecentIndicatorSize:I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/spen/R$string;->pen_string_palette_recent:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setIndicator(IILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mSettingButtonIdx:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->getColorSettingResourceId()I

    move-result v2

    sget v3, Lcom/samsung/android/spen/R$string;->pen_string_select_color_set_to_show:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setResource(IIII)V

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mRecentPageIndex:I

    :cond_1
    :goto_0
    return-void

    nop

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
    .end array-data
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

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mRecentControl:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteRecentControl;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewInterface;->getSwipeChildIndex()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mColorPalette:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mPickerButtonIdx:I

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mSettingButtonIdx:I

    const/4 p1, 0x1

    return p1
.end method

.method public isPickerButton(II)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->hasPickerButton(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->getPickerButtonIdx()I

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

    if-ge v1, v3, :cond_2

    iget-boolean v3, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mIsReverseMode:Z

    if-nez v3, :cond_1

    aget v2, v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->themeValues:[I

    aget v2, v2, v1

    :goto_1
    invoke-static {v2, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    new-instance v3, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;

    invoke-direct {v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;-><init>()V

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    iget-object v4, p2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->names:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v0, v2, v4}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;->setColor([FILjava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mColorPalette:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, p1, v4, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setColor(IILcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteColorInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setRecentIndicatorSize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mRecentIndicatorSize:I

    return-void
.end method

.method public setReverseMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenRectPaletteConfig;->mIsReverseMode:Z

    return-void
.end method
