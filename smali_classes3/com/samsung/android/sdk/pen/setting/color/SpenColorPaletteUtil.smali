.class public Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TABLE_LIST_SIZE:I = 0x15

.field public static final TABLE_SIZE:I = 0x8

.field private static final TAG:Ljava/lang/String; = "SpenColorSettingUtil"


# instance fields
.field private mActiveTable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColorNameIdTables:[I

.field private mColorNameTables:[[Ljava/lang/String;

.field private mColorValueIdTables:[I

.field private mColorValueTables:[[I

.field private mInitComplete:Z

.field private mVisibleColorValueTables:[[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->initColorTables(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mInitComplete:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpenColorSettingUtil() init="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mInitComplete:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenColorSettingUtil"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initColorTables(Landroid/content/Context;)Z
    .locals 12

    const-string v0, "array"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x15

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mActiveTable:Ljava/util/List;

    const/16 v3, 0x16

    new-array v5, v3, [I

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mColorValueIdTables:[I

    new-array v5, v3, [I

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mColorNameIdTables:[I

    new-array v5, v3, [[I

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mColorValueTables:[[I

    new-array v5, v3, [[Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mColorNameTables:[[Ljava/lang/String;

    new-array v3, v3, [[I

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mVisibleColorValueTables:[[I

    const/4 v3, 0x1

    move v6, v1

    move v7, v6

    move v5, v3

    :goto_0
    if-gt v5, v4, :cond_4

    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "spen_setting_swatch_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "spen_setting_swatch_name_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "spen_setting_swatch_adaptive_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-lez v6, :cond_3

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mActiveTable:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mColorValueIdTables:[I

    add-int/lit8 v10, v5, -0x1

    aput v6, v9, v10

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mColorValueTables:[[I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v11

    aput-object v11, v9, v10

    if-lez v7, :cond_1

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mColorNameIdTables:[I

    aput v7, v9, v10

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mColorNameTables:[[Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    goto :goto_1

    :cond_1
    iget-object v9, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mColorNameIdTables:[I

    aput v1, v9, v10

    :goto_1
    if-lez v8, :cond_2

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mVisibleColorValueTables:[[I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v8

    aput-object v8, v9, v10

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mVisibleColorValueTables:[[I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v9

    aput-object v9, v8, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initColorTables() ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] colorId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " nameId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenColorSettingUtil"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    return v3
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mInitComplete:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mActiveTable:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mColorValueIdTables:[I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mColorNameIdTables:[I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mColorNameTables:[[Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mColorValueTables:[[I

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mVisibleColorValueTables:[[I

    return-void
.end method

.method public getColorTables(Ljava/util/List;)Z
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;",
            ">;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mInitComplete:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mActiveTable:Ljava/util/List;

    iget v5, v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mColorNameIdTables:[I

    aget v5, v5, v4

    iput v5, v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->nameId:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mColorValueIdTables:[I

    aget v5, v5, v4

    iput v5, v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->valueId:I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mColorValueTables:[[I

    aget-object v5, v5, v4

    iget-object v6, v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->values:[I

    const/16 v7, 0x8

    invoke-static {v5, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mColorNameTables:[[Ljava/lang/String;

    aget-object v5, v5, v4

    iget-object v6, v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->names:[Ljava/lang/String;

    invoke-static {v5, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mVisibleColorValueTables:[[I

    aget-object v4, v5, v4

    iget-object v3, v3, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteData;->themeValues:[I

    invoke-static {v4, v1, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public getValidTaleIDs(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mInitComplete:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mActiveTable:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isInitComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/color/SpenColorPaletteUtil;->mInitComplete:Z

    return v0
.end method
