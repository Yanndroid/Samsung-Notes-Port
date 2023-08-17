.class public Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextColorPalette;
.super Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "InAppTextColorPalette"


# instance fields
.field private mPaletteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


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

.method private initColorInPalette(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mColorPaletteData:Ljava/util/List;

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

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mColorPaletteData:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mColorPaletteData:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->getColorTables(Ljava/util/List;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mColorPaletteData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mColorPaletteData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    iget-object v3, v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    array-length v3, v3

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_2

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;

    if-eqz p2, :cond_1

    iget-object v6, v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->themeValues:[I

    aget v6, v6, v4

    goto :goto_3

    :cond_1
    iget-object v6, v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    aget v6, v6, v4

    :goto_3
    iget-object v7, v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->names:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v5, v4, v6, v7}, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;->setColor(IILjava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public create(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mCurrentPaletteId:I

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mCurrentColorIndex:I

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->initPaletteContainerViewList(I)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextColorPalette;->initColorInPalette(Ljava/util/List;Z)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextColorPalette;->mPaletteList:Ljava/util/List;

    return-void

    :cond_1
    :goto_0
    const-string p1, "InAppTextColorPalette"

    const-string p2, "create# fail - paletteList is empty."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getPaletteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextColorPalette;->mPaletteList:Ljava/util/List;

    return-object v0
.end method

.method public setSelectedColor(II)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelectedColor# paletteId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", colorIndex= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InAppTextColorPalette"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mCurrentColorIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->updatePickerSelection(Z)V

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_2

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mCurrentPaletteId:I

    if-ne v4, p1, :cond_1

    if-eq v0, p2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->getPaletteContainerViewList()Ljava/util/List;

    move-result-object v0

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mCurrentPaletteId:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;

    iget v4, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mCurrentColorIndex:I

    invoke-virtual {v0, v4, v1, v3}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->updatePaletteItem(IZZ)V

    :cond_2
    :goto_0
    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mCurrentPaletteId:I

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mCurrentColorIndex:I

    if-ne p2, v2, :cond_3

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->updatePickerSelection(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->getColorPaletteData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    aget v0, v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mCurrentColor:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->getPaletteContainerViewList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/inapp/view/winset/palette/RoundedPaletteContainerView;

    invoke-virtual {p1, p2, v3, v3}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->updatePaletteItem(IZZ)V

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mTitleColorBar:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mCurrentColor:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public updateColor(I)V
    .locals 7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->mCurrentColor:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->getColorPaletteData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppPaletteCreator;->getColorPaletteData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    move v5, v2

    :goto_1
    const/16 v6, 0x8

    if-ge v5, v6, :cond_1

    iget-object v6, v4, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    aget v6, v6, v5

    if-ne v6, p1, :cond_0

    invoke-virtual {p0, v3, v5}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextColorPalette;->setSelectedColor(II)V

    move v1, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const/4 p1, -0x1

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/support/senl/nt/app/inapp/view/setting/text/InAppTextColorPalette;->setSelectedColor(II)V

    :cond_3
    return-void
.end method
