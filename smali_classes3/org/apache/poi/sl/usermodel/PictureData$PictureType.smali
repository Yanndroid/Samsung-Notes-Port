.class public final enum Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/usermodel/PictureData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PictureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/usermodel/PictureData$PictureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum BMP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum DIB:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum EMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum EPS:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum GIF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum JPEG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum PICT:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum PNG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum TIFF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum WDP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum WMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

.field public static final enum WPG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;


# instance fields
.field public final contentType:Ljava/lang/String;

.field public final extension:Ljava/lang/String;

.field public final nativeId:I

.field public final ooxmlId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 31

    new-instance v7, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    const-string v1, "EMF"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-string v5, "image/x-emf"

    const-string v6, ".emf"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->EMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    const-string v9, "WMF"

    const/4 v10, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x3

    const-string v13, "image/x-wmf"

    const-string v14, ".wmf"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WMF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    const-string v16, "PICT"

    const/16 v17, 0x2

    const/16 v18, 0x4

    const/16 v19, 0x4

    const-string v20, "image/pict"

    const-string v21, ".pict"

    move-object v15, v1

    invoke-direct/range {v15 .. v21}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PICT:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v2, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    const-string v9, "JPEG"

    const/4 v10, 0x3

    const/4 v11, 0x5

    const/4 v12, 0x5

    const-string v13, "image/jpeg"

    const-string v14, ".jpg"

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->JPEG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v3, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    const-string v16, "PNG"

    const/16 v17, 0x4

    const/16 v18, 0x6

    const/16 v19, 0x6

    const-string v20, "image/png"

    const-string v21, ".png"

    move-object v15, v3

    invoke-direct/range {v15 .. v21}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->PNG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v4, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    const-string v9, "DIB"

    const/4 v10, 0x5

    const/4 v11, 0x7

    const/4 v12, 0x7

    const-string v13, "image/dib"

    const-string v14, ".dib"

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->DIB:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v5, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    const-string v16, "GIF"

    const/16 v17, 0x6

    const/16 v18, -0x1

    const/16 v19, 0x8

    const-string v20, "image/gif"

    const-string v21, ".gif"

    move-object v15, v5

    invoke-direct/range {v15 .. v21}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->GIF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v6, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    const-string v9, "TIFF"

    const/4 v10, 0x7

    const/4 v11, -0x1

    const/16 v12, 0x9

    const-string v13, "image/tiff"

    const-string v14, ".tif"

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->TIFF:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v8, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    const-string v16, "EPS"

    const/16 v17, 0x8

    const/16 v19, 0xa

    const-string v20, "image/x-eps"

    const-string v21, ".eps"

    move-object v15, v8

    invoke-direct/range {v15 .. v21}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->EPS:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v16, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    const-string v10, "BMP"

    const/16 v11, 0x9

    const/4 v12, -0x1

    const/16 v13, 0xb

    const-string v14, "image/x-ms-bmp"

    const-string v15, ".bmp"

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v16, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->BMP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v9, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    const-string v18, "WPG"

    const/16 v20, -0x1

    const/16 v21, 0xc

    const-string v22, "image/x-wpg"

    const-string v23, ".wpg"

    move-object/from16 v17, v9

    invoke-direct/range {v17 .. v23}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WPG:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    new-instance v10, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    const-string v25, "WDP"

    const/16 v26, 0xb

    const/16 v27, -0x1

    const/16 v28, 0xd

    const-string v29, "image/vnd.ms-photo"

    const-string v30, ".wdp"

    move-object/from16 v24, v10

    invoke-direct/range {v24 .. v30}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->WDP:Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    const/16 v11, 0xc

    new-array v11, v11, [Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/4 v7, 0x1

    aput-object v0, v11, v7

    const/4 v0, 0x2

    aput-object v1, v11, v0

    const/4 v0, 0x3

    aput-object v2, v11, v0

    const/4 v0, 0x4

    aput-object v3, v11, v0

    const/4 v0, 0x5

    aput-object v4, v11, v0

    const/4 v0, 0x6

    aput-object v5, v11, v0

    const/4 v0, 0x7

    aput-object v6, v11, v0

    const/16 v0, 0x8

    aput-object v8, v11, v0

    const/16 v0, 0x9

    aput-object v16, v11, v0

    const/16 v0, 0xa

    aput-object v9, v11, v0

    const/16 v0, 0xb

    aput-object v10, v11, v0

    sput-object v11, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->$VALUES:[Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->nativeId:I

    iput p4, p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->ooxmlId:I

    iput-object p5, p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->contentType:Ljava/lang/String;

    iput-object p6, p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->extension:Ljava/lang/String;

    return-void
.end method

.method public static forNativeID(I)Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->values()[Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->nativeId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static forOoxmlID(I)Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .locals 5

    invoke-static {}, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->values()[Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->ooxmlId:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/usermodel/PictureData$PictureType;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->$VALUES:[Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/usermodel/PictureData$PictureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/usermodel/PictureData$PictureType;

    return-object v0
.end method
