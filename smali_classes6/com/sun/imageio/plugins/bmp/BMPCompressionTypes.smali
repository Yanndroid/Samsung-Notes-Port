.class public Lcom/sun/imageio/plugins/bmp/BMPCompressionTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final compressionTypeNames:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "BI_RGB"

    const-string v1, "BI_RLE8"

    const-string v2, "BI_RLE4"

    const-string v3, "BI_BITFIELDS"

    const-string v4, "BI_JPEG"

    const-string v5, "BI_PNG"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/bmp/BMPCompressionTypes;->compressionTypeNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCompressionTypes()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sun/imageio/plugins/bmp/BMPCompressionTypes;->compressionTypeNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sun/imageio/plugins/bmp/BMPCompressionTypes;->compressionTypeNames:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getType(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/sun/imageio/plugins/bmp/BMPCompressionTypes;->compressionTypeNames:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
