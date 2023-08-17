.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mColorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ColorSettingUtil"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingUtil;->mColorMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingUtil;->mColorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingUtil;->init(Landroid/content/Context;)V

    :cond_0
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingUtil;->mColorMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static hasColorName(Landroid/content/Context;I)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingUtil;->mColorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingUtil;->init(Landroid/content/Context;)V

    :cond_0
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingUtil;->mColorMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static init(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;-><init>(Landroid/content/Context;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->getValidTaleIDs(Ljava/util/List;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    new-instance v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    invoke-direct {v3}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->index:I

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->getColorTables(Ljava/util/List;)Z

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingUtil;->setColorInfoInHashMap(Ljava/util/List;)V

    return-void
.end method

.method private static setColorInfoInHashMap(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingUtil;->mColorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/common/ColorSettingUtil;->mColorMap:Ljava/util/HashMap;

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->names:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
