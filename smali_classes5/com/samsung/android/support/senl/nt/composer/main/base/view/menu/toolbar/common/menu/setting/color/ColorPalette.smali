.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette$OnPaletteActionListener;
    }
.end annotation


# static fields
.field public static final BUTTON_PAGE_BG_POS:I = 0x0

.field public static final BUTTON_PICKER_POS:I = 0x8

.field public static final BUTTON_SETTING_POS:I = 0x9

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mColorPaletteData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;",
            ">;"
        }
    .end annotation
.end field

.field private mColorPopupContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPalette;

.field private mContext:Landroid/content/Context;

.field private mCurrentColor:I

.field private mCurrentColorIndex:I

.field private mCurrentPaletteId:I

.field private mDarkMode:Z

.field private mDialogContainer:Landroid/view/View;

.field private mHasColorSetting:Z

.field private mIsSelectedColorPicker:Z

.field private mPageBgColor:I

.field private mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

.field private mPresetLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "RtColorPalette"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPalette;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPaletteData:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentPaletteId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentColorIndex:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mHasColorSetting:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mIsSelectedColorPicker:Z

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPageBgColor:I

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mDarkMode:Z

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPopupContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPalette;

    return-void
.end method

.method private clearSelectionOnPalette()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mIsSelectedColorPicker:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->setSelectedColorPicker(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentPaletteId:I

    iget v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentColorIndex:I

    invoke-virtual {v0, v2, v3, v1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setSelected(IIZZ)V

    :goto_0
    return-void
.end method

.method private findPaletteIndexBy(I)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPaletteData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPaletteData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    move v3, v0

    :goto_1
    iget-object v4, v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget v4, v4, v3

    if-ne p1, v4, :cond_0

    new-instance p1, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in palette"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setButtonInPalette()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPaletteData:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    const/16 v3, 0x8

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->color_rect_setting_icon_bg:I

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$string;->pen_string_color_picker:I

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setResource(IIII)V

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mHasColorSetting:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    const/16 v3, 0x9

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$drawable;->note_handwriting_setting_color_02:I

    sget v5, Lcom/samsung/android/support/senl/nt/composer/R$string;->pen_string_select_color_set_to_show:I

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setResource(IIII)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setColorInPalette(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPaletteData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->index:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPaletteData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->isInitComplete()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->TAG:Ljava/lang/String;

    const-string v0, "setColorInPalette# SpenColorSettingUtil has problem."

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPaletteData:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->getColorTables(Ljava/util/List;)Z

    const/4 p1, 0x3

    new-array p1, p1, [F

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPaletteData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPaletteData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    iget-object v4, v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    array-length v4, v4

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_4

    iget-boolean v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mDarkMode:Z

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->themeValues:[I

    aget v6, v6, v5

    goto :goto_3

    :cond_2
    iget-object v6, v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    aget v6, v6, v5

    :goto_3
    invoke-static {v6, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/16 v6, 0x8

    if-ge v5, v6, :cond_3

    move v6, v5

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v5, 0x1

    :goto_4
    iget-object v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    iget-object v8, v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->names:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-virtual {v7, v2, v6, p1, v8}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setColor(II[FLjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private setCurrentPaletteId(I)V
    .locals 1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentPaletteId:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPopupContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPalette;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPalette;->notifyChangedPaletteId(I)V

    return-void
.end method

.method private setDefaultColorInPalette()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPaletteData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->index:I

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$array;->rich_text_bg_color_spen_setting_name:I

    iput v2, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->nameId:I

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$array;->rich_text_bg_color_spen_setting:I

    iput v2, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->valueId:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->valueId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$array;->rich_text_bg_color_spen_setting_Theme:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->themeValues:[I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$array;->rich_text_bg_color_spen_setting_default_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->names:[Ljava/lang/String;

    iget-object v2, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    array-length v2, v2

    const/4 v3, 0x3

    new-array v3, v3, [F

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_3

    if-nez v4, :cond_0

    iget v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPageBgColor:I

    :goto_1
    invoke-static {v5, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    goto :goto_2

    :cond_0
    iget-boolean v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mDarkMode:Z

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->themeValues:[I

    aget v5, v5, v4

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    aget v5, v5, v4

    goto :goto_1

    :goto_2
    const/16 v5, 0x8

    if-ge v4, v5, :cond_2

    move v5, v4

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v4, 0x1

    :goto_3
    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->names:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v1, v5, v3, v7}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setColor(II[FLjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPaletteData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setSelectedColorByColor()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPaletteData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_5

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPaletteData:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    iget-object v5, v4, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    array-length v5, v5

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_4

    const/16 v7, 0x8

    if-ge v6, v7, :cond_0

    move v7, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v6, 0x1

    :goto_2
    iget-object v8, v4, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    aget v8, v8, v6

    iget-boolean v9, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mHasColorSetting:Z

    if-nez v9, :cond_1

    const/16 v10, 0x9

    if-ne v7, v10, :cond_1

    move v8, v1

    :cond_1
    if-nez v9, :cond_2

    if-nez v7, :cond_2

    move v8, v1

    :cond_2
    iget v9, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentColor:I

    if-ne v8, v9, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    invoke-virtual {v0, v2, v7, v3, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setSelected(IIZZ)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setPage(IZ)V

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->setCurrentPaletteId(I)V

    iput v7, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentColorIndex:I

    return-void

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setPage(IZ)V

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->setSelectedColorPicker(Z)V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->setCurrentPaletteId(I)V

    return-void
.end method

.method private setSelectedColorPicker(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mIsSelectedColorPicker:Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPaletteData:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    const/16 v4, 0x8

    invoke-virtual {v3, v2, v4, p1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setSelected(IIZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public changeTable(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setPaletteInfo(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->setColorInPalette(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->setButtonInPalette()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->setSelectedColorByColor()V

    return-void
.end method

.method public checkColorPaletteData()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPaletteData:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/view/View;Ljava/util/List;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IIZ)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mDialogContainer:Landroid/view/View;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentColor:I

    iput-boolean p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mHasColorSetting:Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPopupContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPalette;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPalette;->isComposerViewDarkTheme()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mDarkMode:Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPopupContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPalette;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPalette;->getBackgroundColor()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPageBgColor:I

    new-instance p1, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p5, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->comp_rt_popup_text_style_palette_radius:I

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setPaletteCornerRadius(I)V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setPaletteInfo(I)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->setColorInPalette(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setPaletteInfo(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->setDefaultColorInPalette()V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->setButtonInPalette()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->setSelectedColorByColor()V

    const/4 p1, -0x1

    if-ne p4, p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPopupContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPalette;

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentPaletteId:I

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPalette;->notifyChangedPaletteId(I)V

    goto :goto_2

    :cond_2
    iput p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentPaletteId:I

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    const/4 p2, 0x0

    invoke-virtual {p1, p4, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setPage(IZ)V

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mDialogContainer:Landroid/view/View;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$id;->preset_color_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPresetLayout:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onColorChangedByPicker(I)V
    .locals 4

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentColor:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->setSelectedColorPicker(Z)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentPaletteId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentColorIndex:I

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3, v3}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setSelected(IIZZ)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->setCurrentPaletteId(I)V

    :cond_0
    return-void
.end method

.method public setCurrentColor(I)Z
    .locals 6

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentColor:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentColor fail, same color : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentColor:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->clearSelectionOnPalette()V

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->findPaletteIndexBy(I)Landroid/util/Pair;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setSelected(IIZZ)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentPaletteId:I

    iget-object v5, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v4, v5, :cond_1

    move v1, v0

    :cond_1
    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setPage(IZ)V

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->setCurrentPaletteId(I)V

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentColorIndex:I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->setSelectedColorPicker(Z)V

    :goto_0
    return v0
.end method

.method public setPaletteActionListener(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette$OnPaletteActionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setPaletteActionListener(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewActionListener;)V

    return-void
.end method

.method public setSelectedColor(IIZ)V
    .locals 3

    iget-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mIsSelectedColorPicker:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->setSelectedColorPicker(Z)V

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    const/4 v1, 0x1

    invoke-virtual {p3, p1, p2, v1, v1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setSelected(IIZZ)V

    iget p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentPaletteId:I

    const/4 v1, -0x1

    if-eq p3, v1, :cond_2

    if-ne p3, p1, :cond_1

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentColorIndex:I

    if-eq v1, p2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mPaletteView:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentColorIndex:I

    invoke-virtual {v1, p3, v2, v0, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPaletteViewV2;->setSelected(IIZZ)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->setCurrentPaletteId(I)V

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentColorIndex:I

    iget-boolean p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mHasColorSetting:Z

    if-nez p3, :cond_3

    const/16 v1, 0x9

    if-ne p2, v1, :cond_3

    :goto_0
    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentColor:I

    goto :goto_1

    :cond_3
    if-nez p3, :cond_4

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPaletteData:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, p1, :cond_6

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPaletteData:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    const/16 p3, 0x8

    if-le p2, p3, :cond_5

    add-int/lit8 p2, p2, -0x1

    :cond_5
    iget-object p1, p1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    array-length p3, p1

    if-le p3, p2, :cond_6

    aget p1, p1, p2

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentColor:I

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mColorPopupContract:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPalette;

    iget p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorPalette;->mCurrentColor:I

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/common/menu/setting/color/ColorContract$IColorPalette;->notifyChangedColor(I)V

    return-void
.end method
