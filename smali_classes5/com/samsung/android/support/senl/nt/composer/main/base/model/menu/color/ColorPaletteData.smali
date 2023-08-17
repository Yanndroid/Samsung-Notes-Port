.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/color/ColorPaletteData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_PALETTE_LIST_PEN_INDEX:[I

.field private static final DEFAULT_PALETTE_SELECTED_PEN_INDEX:[I

.field public static final MAX_SELECT_COUNT:I = 0x4

.field private static final OTHERSAPP_DEFAULT_PALETTE_START_ID:I = 0xb

.field private static final OTHERSAPP_WRITING_SWATCH_END_ID:I = 0x14


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/color/ColorPaletteData;->DEFAULT_PALETTE_SELECTED_PEN_INDEX:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/color/ColorPaletteData;->DEFAULT_PALETTE_LIST_PEN_INDEX:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x4
        0x15
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x4
        0x15
        0x5
        0x2
        0x9
        0x7
        0x3
        0x6
        0x8
        0xa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultSelectList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/color/ColorPaletteData;->DEFAULT_PALETTE_SELECTED_PEN_INDEX:[I

    array-length v0, v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/color/ColorPaletteData;->DEFAULT_PALETTE_SELECTED_PEN_INDEX:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getDefaultSwatchList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/color/ColorPaletteData;->DEFAULT_PALETTE_LIST_PEN_INDEX:[I

    array-length v0, v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    sget-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/color/ColorPaletteData;->DEFAULT_PALETTE_LIST_PEN_INDEX:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    :goto_1
    const/16 v2, 0x14

    if-gt v0, v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method
