.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mPenColorDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;",
            ">;"
        }
    .end annotation
.end field

.field private static mPenColorDescription:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPreInitialized:Z

.field private static mSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PenColorPaletteModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDataList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDescription:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mSize:I

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPreInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSettingPenColorData(I)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDataList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;

    return-object p0
.end method

.method public static getSettingPenColorPaletteSize()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mSize:I

    return v0
.end method

.method public static getSettingPenDescription(I)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;->getColor()I

    move-result v3

    if-ne v3, p0, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPreInitialized:Z

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->initPenColorDataList(Landroid/content/Context;)V

    return-void
.end method

.method private static initPenColorDataList(Landroid/content/Context;)V
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$array;->screenoff_pen_color_palette_set:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$array;->screenoff_pen_color_name_list:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result p0

    sput p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mSize:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    sget v4, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mSize:I

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    sget-object v5, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDescription:Ljava/util/List;

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;

    sget-object v6, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDescription:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;-><init>(ILjava/lang/String;)V

    sget-object v4, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDataList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initPenColorDataList# lDescription "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :cond_2
    :goto_1
    :try_start_2
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->TAG:Ljava/lang/String;

    const-string v2, "initPenColorDataList# null array"

    invoke-static {p0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    :catch_0
    move-object p0, v0

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_4

    :catch_1
    move-object p0, v0

    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->TAG:Ljava/lang/String;

    const-string v2, "initPenColorDataList# exception"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6
    :goto_3
    return-void

    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, p0

    move-object p0, v7

    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    throw p0
.end method

.method public static isPreInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPreInitialized:Z

    return v0
.end method

.method public static release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->TAG:Ljava/lang/String;

    const-string v1, "release#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPreInitialized:Z

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDescription:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static updateColor(II)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mSize:I

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDescription:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDataList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDataList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;->setColor(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    if-ge v0, p0, :cond_2

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDataList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;->getColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateColor# lDescription "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateColor# lColor "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updateColorPaletteOrder(I)V
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateColorPaletteOrder# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, ", "

    if-ge v3, v0, :cond_0

    sget-object v5, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDataList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;->getColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateColorPaletteOrder# lPenColorDataList before "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    :goto_1
    sget v5, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mSize:I

    if-ge v3, v5, :cond_2

    sget-object v5, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDataList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;->getColor()I

    move-result v6

    if-ne v6, p0, :cond_1

    goto :goto_2

    :cond_1
    sget-object v6, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDataList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object v6, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDataList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_3
    if-ge v2, v0, :cond_3

    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->mPenColorDataList:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorData;->getColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    sget-object p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateColorPaletteOrder# lPenColorDataList after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static updatePairedPenColor(ZIILjava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/high16 v0, -0x1000000

    or-int/2addr p1, v0

    or-int/2addr p2, v0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePairedPenColor# initialize/savedColor/pairedColor/currentPairedCode/savedPairedCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const v5, 0xffffff

    and-int v6, p1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const-string v6, "#%06X"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v3, [Ljava/lang/Object;

    and-int v8, p2, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenPairedColorModel$PAIRED_COLOR_TYPE;->PEN:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenPairedColorModel$PAIRED_COLOR_TYPE;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenPairedColorModel;->getPairedColorType()Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenPairedColorModel$PAIRED_COLOR_TYPE;

    move-result-object v2

    if-ne v1, v2, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p5, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p1, p2

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "updatePairedPenColor# savedColor : "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p4, v3, [Ljava/lang/Object;

    and-int p5, p1, v5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p4, v7

    invoke-static {v6, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    const/4 p0, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p4

    const/4 p5, 0x3

    const/4 v1, 0x4

    sparse-switch p4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p4, "DEF"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 p0, 0x12

    goto/16 :goto_0

    :sswitch_1
    const-string p4, "ZW"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 p0, 0x11

    goto/16 :goto_0

    :sswitch_2
    const-string p4, "ZS"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 p0, 0x10

    goto/16 :goto_0

    :sswitch_3
    const-string p4, "ZR"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 p0, 0xf

    goto/16 :goto_0

    :sswitch_4
    const-string p4, "ZN"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 p0, 0xe

    goto/16 :goto_0

    :sswitch_5
    const-string p4, "ZK"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 p0, 0xd

    goto/16 :goto_0

    :sswitch_6
    const-string p4, "ZI"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 p0, 0xc

    goto/16 :goto_0

    :sswitch_7
    const-string p4, "ZB"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 p0, 0xb

    goto/16 :goto_0

    :sswitch_8
    const-string p4, "ZA"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 p0, 0xa

    goto/16 :goto_0

    :sswitch_9
    const-string p4, "YZ"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 p0, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string p4, "YB"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 p0, 0x8

    goto/16 :goto_0

    :sswitch_b
    const-string p4, "WS"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_c

    goto :goto_0

    :cond_c
    const/4 p0, 0x7

    goto :goto_0

    :sswitch_c
    const-string p4, "VS"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_d

    goto :goto_0

    :cond_d
    const/4 p0, 0x6

    goto :goto_0

    :sswitch_d
    const-string p4, "SW"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_e

    goto :goto_0

    :cond_e
    const/4 p0, 0x5

    goto :goto_0

    :sswitch_e
    const-string p4, "PN"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_f

    goto :goto_0

    :cond_f
    move p0, v1

    goto :goto_0

    :sswitch_f
    const-string p4, "LP"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_10

    goto :goto_0

    :cond_10
    move p0, p5

    goto :goto_0

    :sswitch_10
    const-string p4, "KZ"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_11

    goto :goto_0

    :cond_11
    const/4 p0, 0x2

    goto :goto_0

    :sswitch_11
    const-string p4, "BS"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_12

    goto :goto_0

    :cond_12
    move p0, v3

    goto :goto_0

    :sswitch_12
    const-string p4, "AS"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_13

    goto :goto_0

    :cond_13
    move p0, v7

    :goto_0
    packed-switch p0, :pswitch_data_0

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->updateColor(II)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updatePairedPenColor# default code: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    invoke-static {v7, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->updateColor(II)V

    const-string p0, "updatePairedPenColor# Yellow"

    :goto_1
    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    invoke-static {v3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->updateColor(II)V

    const-string p0, "updatePairedPenColor# Orange"

    goto :goto_1

    :pswitch_2
    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->updateColor(II)V

    const-string p0, "updatePairedPenColor# WHITE"

    goto :goto_1

    :pswitch_3
    invoke-static {p5, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->updateColor(II)V

    const-string p0, "updatePairedPenColor# Blue"

    goto :goto_1

    :goto_2
    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->updateColorPaletteOrder(I)V

    return p1

    :sswitch_data_0
    .sparse-switch
        0x832 -> :sswitch_12
        0x851 -> :sswitch_11
        0x96f -> :sswitch_10
        0x984 -> :sswitch_f
        0x9fe -> :sswitch_e
        0xa64 -> :sswitch_d
        0xabd -> :sswitch_c
        0xadc -> :sswitch_b
        0xb09 -> :sswitch_a
        0xb21 -> :sswitch_9
        0xb27 -> :sswitch_8
        0xb28 -> :sswitch_7
        0xb2f -> :sswitch_6
        0xb31 -> :sswitch_5
        0xb34 -> :sswitch_4
        0xb38 -> :sswitch_3
        0xb39 -> :sswitch_2
        0xb3d -> :sswitch_1
        0x107e5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
