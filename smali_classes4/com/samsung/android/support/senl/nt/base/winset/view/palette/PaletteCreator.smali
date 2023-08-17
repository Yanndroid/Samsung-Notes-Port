.class public Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator$OnItemActionListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_SWIPE_ITEM_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "PaletteCreator"


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

.field private final mColorResourceIDs:[I

.field private final mColorResourceNames:[I

.field private final mContext:Landroid/content/Context;

.field private final mItemActionListener:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator$OnItemActionListener;

.field private mPaletteContainerViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator$OnItemActionListener;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$array;->background_color_setting1:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$array;->background_color_setting2:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$array;->background_color_setting3:I

    const/4 v5, 0x2

    aput v2, v1, v5

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mColorResourceIDs:[I

    new-array v0, v0, [I

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$array;->background_color_setting_name1:I

    aput v1, v0, v3

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$array;->background_color_setting_name2:I

    aput v1, v0, v4

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$array;->background_color_setting_name3:I

    aput v1, v0, v5

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mColorResourceNames:[I

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mItemActionListener:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator$OnItemActionListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;)Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator$OnItemActionListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mItemActionListener:Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator$OnItemActionListener;

    return-object p0
.end method

.method private setDefaultColorInPalette(Z)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mColorPaletteData:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mColorPaletteData:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mColorResourceIDs:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    new-instance v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    invoke-direct {v2}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;-><init>()V

    iput v1, v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->index:I

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mColorResourceIDs:[I

    aget v3, v3, v1

    iput v3, v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->valueId:I

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mColorResourceNames:[I

    aget v3, v3, v1

    iput v3, v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->nameId:I

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->valueId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->nameId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->names:[Ljava/lang/String;

    iget-object v3, v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    array-length v3, v3

    move v4, v0

    :goto_2
    if-ge v4, v3, :cond_2

    if-nez v1, :cond_1

    if-nez v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->updateDefaultColorLayout(Z)V

    goto :goto_3

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;

    iget-object v6, v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    aget v6, v6, v4

    iget-object v7, v2, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->names:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v5, v4, v6, v7}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->setColor(IILjava/lang/String;)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mColorPaletteData:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public create(IIFZ)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mColorResourceIDs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$layout;->background_color_palette_container:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->setPaletteItemInfo(IIIF)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator$1;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;I)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->setPaletteViewContract(Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView$PaletteViewContract;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->setDefaultColorInPalette(Z)V

    return-void
.end method

.method public getColor(Landroid/content/Context;II)I
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mColorResourceIDs:[I

    aget p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    aget p1, p1, p3

    return p1
.end method

.method public getColorPaletteData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mColorPaletteData:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultColor(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->getColor(Landroid/content/Context;II)I

    move-result p1

    return p1
.end method

.method public getPaletteContainerViewList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    return-object v0
.end method

.method public updateDefaultColorLayout(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/ContextUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;

    if-eqz p1, :cond_2

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$drawable;->palette_default_bg_color_patten_dark:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/samsung/android/support/senl/nt/base/R$drawable;->palette_default_bg_color_patten:I

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mColorResourceNames:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->setResource(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteCreator;->mPaletteContainerViewList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/nt/base/winset/view/palette/PaletteContainerView;->updateSelector(IZ)V

    :cond_3
    :goto_2
    return-void
.end method
