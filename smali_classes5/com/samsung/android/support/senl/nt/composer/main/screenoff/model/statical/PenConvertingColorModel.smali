.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mConvertingColorSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mPreInitialized:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "PenConvertingColorModel"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->mPreInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConvertingColorSet()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->mConvertingColorSet:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->initConvertingColorSet()V

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->mConvertingColorSet:Ljava/util/HashMap;

    return-object v0
.end method

.method public static init()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->mPreInitialized:Z

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->initConvertingColorSet()V

    return-void
.end method

.method private static initConvertingColorSet()V
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->mConvertingColorSet:Ljava/util/HashMap;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$array;->screenoff_pen_paired_color_set:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/composer/R$array;->screenoff_pen_saved_color_set:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/composer/R$array;->screenoff_pen_color_palette_set:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$array;->screenoff_pen_saved_color_palette_set:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-virtual {v1, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    sget-object v9, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->mConvertingColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_1

    invoke-virtual {v2, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-virtual {v3, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    sget-object v9, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->mConvertingColorSet:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :catchall_0
    move-exception v4

    goto :goto_4

    :catch_0
    move-exception v4

    :try_start_1
    sget-object v5, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initConvertingColorSet# exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->mConvertingColorSet:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_3
    return-void

    :goto_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v4
.end method

.method public static isPreInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->mPreInitialized:Z

    return v0
.end method

.method public static release()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->TAG:Ljava/lang/String;

    const-string v1, "release#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->mPreInitialized:Z

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->mConvertingColorSet:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenConvertingColorModel;->mConvertingColorSet:Ljava/util/HashMap;

    :cond_0
    return-void
.end method
