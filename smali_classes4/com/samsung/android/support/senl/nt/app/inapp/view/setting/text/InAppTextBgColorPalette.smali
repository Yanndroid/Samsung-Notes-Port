.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextBgColorPalette;
.super Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "InAppTextBgColorPalette"


# instance fields
.field private mPageBgColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ImageView;Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator$OnItemActionListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator$OnItemActionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ImageView;Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator$OnItemActionListener;)V

    return-void
.end method

.method private getDefaultPageBgColor()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->background_color_white:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0
.end method

.method private setDefaultColorInPalette(IZ)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mColorPaletteData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->index:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$array;->rich_text_bg_color_spen_setting_name:I

    iput v2, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->nameId:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$array;->rich_text_bg_color_spen_setting:I

    iput v2, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->valueId:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->valueId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$array;->rich_text_bg_color_spen_setting_Theme:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->themeValues:[I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$array;->rich_text_bg_color_spen_setting_default_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->names:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mColorPaletteData:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextBgColorPalette;->updatePageBgColor(IZ)V

    iget-object p1, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    array-length p1, p1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;

    if-eqz p2, :cond_0

    iget-object v5, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->themeValues:[I

    aget v5, v5, v3

    goto :goto_1

    :cond_0
    iget-object v5, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    aget v5, v5, v3

    :goto_1
    iget-object v6, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->names:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v4, v3, v5, v6}, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;->setColor(IILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;

    sub-int/2addr p1, v2

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$drawable;->in_app_text_palette_bg_with_stroke:I

    const-string v2, ""

    invoke-virtual {p2, p1, v0, v2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;->setResource(IILjava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;

    invoke-virtual {p2, p1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->updateSelector(IZ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public create(IZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->initPaletteContainerViewList(I)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextBgColorPalette;->setDefaultColorInPalette(IZ)V

    return-void
.end method

.method public setSelectedColor(II)V
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSelectedColor# colorIndex="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InAppTextBgColorPalette"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mCurrentColorIndex:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->updatePickerSelection(Z)V

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->getPaletteContainerViewList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mCurrentColorIndex:I

    invoke-virtual {p1, v3, v2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->updatePaletteItem(IZZ)V

    :cond_1
    :goto_0
    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mCurrentColorIndex:I

    if-ne p2, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->updatePickerSelection(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->getColorPaletteData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    aget p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mCurrentColor:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->getPaletteContainerViewList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;

    invoke-virtual {p1, p2, v1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->updatePaletteItem(IZZ)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mTitleColorBar:Landroid/widget/ImageView;

    if-nez p2, :cond_3

    iget p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextBgColorPalette;->mPageBgColor:I

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mCurrentColor:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_2
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public updateColor(I)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mCurrentColor:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->getColorPaletteData()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextBgColorPalette;->setSelectedColor(II)V

    move p1, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    const/4 p1, -0x1

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextBgColorPalette;->setSelectedColor(II)V

    :cond_2
    return-void
.end method

.method public updatePageBgColor(IZ)V
    .locals 5

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mCurrentColorIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextBgColorPalette;->getDefaultPageBgColor()I

    move-result v3

    if-ne p1, v3, :cond_2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$color;->background_color_black:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;

    invoke-virtual {v1, v2, p1, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;->setColor(IIZ)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$drawable;->in_app_text_palette_bg_with_stroke:I

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;->setResource(IILjava/lang/String;Z)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->updateSelector(IZ)V

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;

    invoke-virtual {p2, v2, p1, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;->setColor(IIZ)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;

    invoke-virtual {p2, v2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->updateSelector(IZ)V

    :goto_2
    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextBgColorPalette;->mPageBgColor:I

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mTitleColorBar:Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method
