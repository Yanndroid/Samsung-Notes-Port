.class public Lcom/sun/imageio/plugins/png/PNGMetadata;
.super Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final IHDR_bitDepths:[Ljava/lang/String;

.field public static final IHDR_colorTypeNames:[Ljava/lang/String;

.field public static final IHDR_compressionMethodNames:[Ljava/lang/String;

.field public static final IHDR_filterMethodNames:[Ljava/lang/String;

.field public static final IHDR_interlaceMethodNames:[Ljava/lang/String;

.field public static final IHDR_numChannels:[I

.field public static final PHYS_UNIT_METER:I = 0x1

.field public static final PHYS_UNIT_UNKNOWN:I = 0x0

.field public static final colorSpaceTypeNames:[Ljava/lang/String;

.field public static final iCCP_compressionMethodNames:[Ljava/lang/String;

.field public static final nativeMetadataFormatClassName:Ljava/lang/String; = "com.sun.imageio.plugins.png.PNGMetadataFormat"

.field public static final nativeMetadataFormatName:Ljava/lang/String; = "javax_imageio_png_1.0"

.field public static final renderingIntentNames:[Ljava/lang/String;

.field public static final unitSpecifierNames:[Ljava/lang/String;

.field public static final zTXt_compressionMethodNames:[Ljava/lang/String;


# instance fields
.field public IHDR_bitDepth:I

.field public IHDR_colorType:I

.field public IHDR_compressionMethod:I

.field public IHDR_filterMethod:I

.field public IHDR_height:I

.field public IHDR_interlaceMethod:I

.field public IHDR_present:Z

.field public IHDR_width:I

.field public PLTE_blue:[B

.field public PLTE_green:[B

.field public PLTE_order:[I

.field public PLTE_present:Z

.field public PLTE_red:[B

.field public bKGD_blue:I

.field public bKGD_colorType:I

.field public bKGD_gray:I

.field public bKGD_green:I

.field public bKGD_index:I

.field public bKGD_present:Z

.field public bKGD_red:I

.field public cHRM_blueX:I

.field public cHRM_blueY:I

.field public cHRM_greenX:I

.field public cHRM_greenY:I

.field public cHRM_present:Z

.field public cHRM_redX:I

.field public cHRM_redY:I

.field public cHRM_whitePointX:I

.field public cHRM_whitePointY:I

.field public gAMA_gamma:I

.field public gAMA_present:Z

.field public hIST_histogram:[C

.field public hIST_present:Z

.field public iCCP_compressedProfile:[B

.field public iCCP_compressionMethod:I

.field public iCCP_present:Z

.field public iCCP_profileName:Ljava/lang/String;

.field public iTXt_compressionFlag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public iTXt_compressionMethod:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public iTXt_keyword:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public iTXt_languageTag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public iTXt_text:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public iTXt_translatedKeyword:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pHYs_pixelsPerUnitXAxis:I

.field public pHYs_pixelsPerUnitYAxis:I

.field public pHYs_present:Z

.field public pHYs_unitSpecifier:I

.field public sBIT_alphaBits:I

.field public sBIT_blueBits:I

.field public sBIT_colorType:I

.field public sBIT_grayBits:I

.field public sBIT_greenBits:I

.field public sBIT_present:Z

.field public sBIT_redBits:I

.field public sPLT_alpha:[I

.field public sPLT_blue:[I

.field public sPLT_frequency:[I

.field public sPLT_green:[I

.field public sPLT_paletteName:Ljava/lang/String;

.field public sPLT_present:Z

.field public sPLT_red:[I

.field public sPLT_sampleDepth:I

.field public sRGB_present:Z

.field public sRGB_renderingIntent:I

.field public tEXt_keyword:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tEXt_text:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tIME_day:I

.field public tIME_hour:I

.field public tIME_minute:I

.field public tIME_month:I

.field public tIME_present:Z

.field public tIME_second:I

.field public tIME_year:I

.field public tRNS_alpha:[B

.field public tRNS_blue:I

.field public tRNS_colorType:I

.field public tRNS_gray:I

.field public tRNS_green:I

.field public tRNS_present:Z

.field public tRNS_red:I

.field public unknownChunkData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field public unknownChunkType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public zTXt_compressionMethod:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public zTXt_keyword:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public zTXt_text:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "Grayscale"

    const/4 v1, 0x0

    const-string v2, "RGB"

    const-string v3, "Palette"

    const-string v4, "GrayAlpha"

    const/4 v5, 0x0

    const-string v6, "RGBAlpha"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorTypeNames:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_numChannels:[I

    const-string v0, "1"

    const-string v1, "2"

    const-string v2, "4"

    const-string v3, "8"

    const-string v4, "16"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepths:[Ljava/lang/String;

    const-string v0, "deflate"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_compressionMethodNames:[Ljava/lang/String;

    const-string v1, "adaptive"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_filterMethodNames:[Ljava/lang/String;

    const-string v1, "none"

    const-string v2, "adam7"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_interlaceMethodNames:[Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_compressionMethodNames:[Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_compressionMethodNames:[Ljava/lang/String;

    const-string v0, "unknown"

    const-string v1, "meter"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->unitSpecifierNames:[Ljava/lang/String;

    const-string v0, "Perceptual"

    const-string v1, "Relative colorimetric"

    const-string v2, "Saturation"

    const-string v3, "Absolute colorimetric"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->renderingIntentNames:[Ljava/lang/String;

    const-string v1, "GRAY"

    const/4 v2, 0x0

    const-string v3, "RGB"

    const-string v4, "RGB"

    const-string v5, "GRAY"

    const/4 v6, 0x0

    const-string v7, "RGB"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->colorSpaceTypeNames:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x3
        0x3
        0x2
        0x0
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x1

    const-string v2, "javax_imageio_png_1.0"

    const-string v3, "com.sun.imageio.plugins.png.PNGMetadataFormat"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;-><init>(ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_order:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_keyword:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_compressionFlag:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_compressionMethod:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_languageTag:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_translatedKeyword:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_text:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_keyword:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_text:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_keyword:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_compressionMethod:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_text:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->unknownChunkType:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->unknownChunkData:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_order:[I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_keyword:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_compressionFlag:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_compressionMethod:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_languageTag:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_translatedKeyword:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_text:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_keyword:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_text:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_keyword:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_compressionMethod:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_text:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->unknownChunkType:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->unknownChunkData:Ljava/util/ArrayList;

    return-void
.end method

.method private cloneBytesArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    :goto_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;

    invoke-direct {v0, p2, p1}, Lorg/apache/poi/javax/imageio/metadata/IIOInvalidTreeException;-><init>(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    throw v0
.end method

.method private getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    return-object p3

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Required attribute "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not present!"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getBooleanAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getBooleanAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method private getBooleanAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;ZZ)Z
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    return p3

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Required attribute "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " not present!"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p3

    const-string p4, "TRUE"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_5

    const-string p4, "true"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    const-string p4, "FALSE"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_4

    const-string p4, "false"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Attribute "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " must be \'TRUE\' or \'FALSE\'!"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v0

    :cond_5
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method private getEnumeratedAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getEnumeratedAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/String;IZ)I

    move-result p1

    return p1
.end method

.method private getEnumeratedAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/String;IZ)I
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p5, :cond_0

    return p4

    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Required attribute "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " not present!"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p4}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x0

    :goto_0
    array-length v0, p3

    if-ge p5, v0, :cond_3

    aget-object v0, p3, p5

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return p5

    :cond_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Illegal value for attribute "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "!"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method private getFloatAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)F
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getFloatAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;FZ)F

    move-result p1

    return p1
.end method

.method private getFloatAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;FZ)F
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getStringAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p3

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method private getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZ)I

    move-result p1

    return p1
.end method

.method private getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZ)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getStringAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p3

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getNativeTree()Lorg/w3c/dom/Node;
    .locals 19

    move-object/from16 v0, p0

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "javax_imageio_png_1.0"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_present:Z

    const-string v3, "compressionMethod"

    if-eqz v2, :cond_0

    new-instance v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v4, "IHDR"

    invoke-direct {v2, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_width:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "width"

    invoke-virtual {v2, v5, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_height:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "height"

    invoke-virtual {v2, v5, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bitDepth"

    invoke-virtual {v2, v5, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorTypeNames:[Ljava/lang/String;

    iget v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    aget-object v4, v4, v5

    const-string v5, "colorType"

    invoke-virtual {v2, v5, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_compressionMethodNames:[Ljava/lang/String;

    iget v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_compressionMethod:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_filterMethodNames:[Ljava/lang/String;

    iget v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_filterMethod:I

    aget-object v4, v4, v5

    const-string v5, "filterMethod"

    invoke-virtual {v2, v5, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_interlaceMethodNames:[Ljava/lang/String;

    iget v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_interlaceMethod:I

    aget-object v4, v4, v5

    const-string v5, "interlaceMethod"

    invoke-virtual {v2, v5, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    iget-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_present:Z

    const-string v4, "index"

    const-string v5, "blue"

    const-string v6, "green"

    const-string v7, "red"

    if-eqz v2, :cond_2

    new-instance v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v9, "PLTE"

    invoke-direct {v2, v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_red:[B

    array-length v9, v9

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v9, :cond_1

    new-instance v11, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v12, "PLTEEntry"

    invoke-direct {v11, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v4, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_red:[B

    aget-byte v12, v12, v10

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v7, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_green:[B

    aget-byte v12, v12, v10

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_blue:[B

    aget-byte v12, v12, v10

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v5, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    iget-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_present:Z

    const/4 v9, 0x2

    const/4 v10, 0x3

    const-string v11, "gray"

    const/4 v12, 0x0

    if-eqz v2, :cond_6

    new-instance v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v13, "bKGD"

    invoke-direct {v2, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v13, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_colorType:I

    if-ne v13, v10, :cond_3

    new-instance v12, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v13, "bKGD_Palette"

    invoke-direct {v12, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v13, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_index:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v4, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-nez v13, :cond_4

    new-instance v12, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v13, "bKGD_Grayscale"

    invoke-direct {v12, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v13, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_gray:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-ne v13, v9, :cond_5

    new-instance v12, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v13, "bKGD_RGB"

    invoke-direct {v12, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v13, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_red:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v7, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v13, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_green:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v6, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v13, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_blue:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v5, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-virtual {v2, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_6
    iget-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_present:Z

    if-eqz v2, :cond_7

    new-instance v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v13, "cHRM"

    invoke-direct {v2, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v13, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_whitePointX:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "whitePointX"

    invoke-virtual {v2, v14, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v13, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_whitePointY:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "whitePointY"

    invoke-virtual {v2, v14, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v13, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_redX:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "redX"

    invoke-virtual {v2, v14, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v13, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_redY:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "redY"

    invoke-virtual {v2, v14, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v13, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_greenX:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "greenX"

    invoke-virtual {v2, v14, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v13, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_greenY:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "greenY"

    invoke-virtual {v2, v14, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v13, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_blueX:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "blueX"

    invoke-virtual {v2, v14, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v13, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_blueY:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "blueY"

    invoke-virtual {v2, v14, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_7
    iget-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->gAMA_present:Z

    const-string v13, "value"

    if-eqz v2, :cond_8

    new-instance v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v14, "gAMA"

    invoke-direct {v2, v14}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v14, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->gAMA_gamma:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_8
    iget-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->hIST_present:Z

    if-eqz v2, :cond_a

    new-instance v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v14, "hIST"

    invoke-direct {v2, v14}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    :goto_2
    iget-object v15, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->hIST_histogram:[C

    array-length v15, v15

    if-ge v14, v15, :cond_9

    new-instance v15, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v8, "hISTEntry"

    invoke-direct {v15, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v4, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->hIST_histogram:[C

    aget-char v8, v8, v14

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v13, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_a
    iget-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_present:Z

    if-eqz v2, :cond_c

    new-instance v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v8, "iCCP"

    invoke-direct {v2, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_profileName:Ljava/lang/String;

    const-string v14, "profileName"

    invoke-virtual {v2, v14, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_compressionMethodNames:[Ljava/lang/String;

    iget v14, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_compressionMethod:I

    aget-object v8, v8, v14

    invoke-virtual {v2, v3, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_compressedProfile:[B

    if-eqz v8, :cond_b

    invoke-virtual {v8}, [B->clone()Ljava/lang/Object;

    move-result-object v8

    :cond_b
    invoke-virtual {v2, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setUserObject(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_c
    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v8, "text"

    const-string v14, "keyword"

    if-lez v2, :cond_f

    new-instance v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v15, "iTXt"

    invoke-direct {v2, v15}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const/4 v15, 0x0

    :goto_3
    iget-object v10, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v15, v10, :cond_e

    new-instance v10, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v9, "iTXtEntry"

    invoke-direct {v10, v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v14, v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_compressionFlag:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_d

    const-string v9, "TRUE"

    goto :goto_4

    :cond_d
    const-string v9, "FALSE"

    :goto_4
    move-object/from16 v16, v12

    const-string v12, "compressionFlag"

    invoke-virtual {v10, v12, v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_compressionMethod:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v3, v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_languageTag:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v12, "languageTag"

    invoke-virtual {v10, v12, v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_translatedKeyword:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v12, "translatedKeyword"

    invoke-virtual {v10, v12, v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_text:Ljava/util/ArrayList;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v8, v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v12, v16

    const/4 v9, 0x2

    goto :goto_3

    :cond_e
    move-object/from16 v16, v12

    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_5

    :cond_f
    move-object/from16 v16, v12

    :goto_5
    iget-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_present:Z

    if-eqz v2, :cond_10

    new-instance v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v9, "pHYs"

    invoke-direct {v2, v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_pixelsPerUnitXAxis:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "pixelsPerUnitXAxis"

    invoke-virtual {v2, v10, v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_pixelsPerUnitYAxis:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "pixelsPerUnitYAxis"

    invoke-virtual {v2, v10, v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lcom/sun/imageio/plugins/png/PNGMetadata;->unitSpecifierNames:[Ljava/lang/String;

    iget v10, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_unitSpecifier:I

    aget-object v9, v9, v10

    const-string v10, "unitSpecifier"

    invoke-virtual {v2, v10, v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_10
    iget-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_present:Z

    const-string v9, "alpha"

    if-eqz v2, :cond_16

    new-instance v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v10, "sBIT"

    invoke-direct {v2, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v10, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_colorType:I

    if-nez v10, :cond_11

    new-instance v12, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v10, "sBIT_Grayscale"

    invoke-direct {v12, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v10, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_grayBits:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v11, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_11
    const/4 v12, 0x4

    if-ne v10, v12, :cond_12

    new-instance v12, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v10, "sBIT_GrayAlpha"

    invoke-direct {v12, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v10, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_grayBits:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v11, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    iget v10, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_alphaBits:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v9, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_12
    const/4 v12, 0x2

    if-ne v10, v12, :cond_13

    new-instance v12, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v10, "sBIT_RGB"

    invoke-direct {v12, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    :goto_7
    iget v10, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_redBits:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v7, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v10, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_greenBits:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v6, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v10, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_blueBits:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v5, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_13
    const/4 v12, 0x6

    if-ne v10, v12, :cond_14

    new-instance v12, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v10, "sBIT_RGBAlpha"

    invoke-direct {v12, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v10, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_redBits:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v7, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v10, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_greenBits:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v6, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v10, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_blueBits:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v5, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_14
    const/4 v12, 0x3

    if-ne v10, v12, :cond_15

    new-instance v12, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v10, "sBIT_Palette"

    invoke-direct {v12, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_15
    move-object/from16 v12, v16

    :goto_8
    invoke-virtual {v2, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_9

    :cond_16
    move-object/from16 v12, v16

    :goto_9
    iget-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_present:Z

    if-eqz v2, :cond_18

    new-instance v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v10, "sPLT"

    invoke-direct {v2, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_paletteName:Ljava/lang/String;

    const-string v15, "name"

    invoke-virtual {v2, v15, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v10, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_sampleDepth:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string v15, "sampleDepth"

    invoke-virtual {v2, v15, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_red:[I

    array-length v10, v10

    const/4 v15, 0x0

    :goto_a
    if-ge v15, v10, :cond_17

    move/from16 v16, v10

    new-instance v10, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-object/from16 v17, v12

    const-string v12, "sPLTEntry"

    invoke-direct {v10, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v4, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_red:[I

    aget v12, v12, v15

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v7, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_green:[I

    aget v12, v12, v15

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v6, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_blue:[I

    aget v12, v12, v15

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v5, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_alpha:[I

    aget v12, v12, v15

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v9, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_frequency:[I

    aget v12, v12, v15

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v18, v8

    const-string v8, "frequency"

    invoke-virtual {v10, v8, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v16

    move-object/from16 v12, v17

    move-object/from16 v8, v18

    goto :goto_a

    :cond_17
    move-object/from16 v18, v8

    move-object/from16 v17, v12

    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_b

    :cond_18
    move-object/from16 v18, v8

    move-object/from16 v17, v12

    :goto_b
    iget-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sRGB_present:Z

    if-eqz v2, :cond_19

    new-instance v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v8, "sRGB"

    invoke-direct {v2, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/sun/imageio/plugins/png/PNGMetadata;->renderingIntentNames:[Ljava/lang/String;

    iget v10, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sRGB_renderingIntent:I

    aget-object v8, v8, v10

    const-string v10, "renderingIntent"

    invoke-virtual {v2, v10, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_19
    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1b

    new-instance v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v8, "tEXt"

    invoke-direct {v2, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_c
    iget-object v10, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_1a

    new-instance v10, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v12, "tEXtEntry"

    invoke-direct {v10, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v14, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_text:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v10, v13, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_1a
    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1b
    iget-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_present:Z

    if-eqz v2, :cond_1c

    new-instance v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v8, "tIME"

    invoke-direct {v2, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v8, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_year:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "year"

    invoke-virtual {v2, v10, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v8, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_month:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "month"

    invoke-virtual {v2, v10, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v8, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_day:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "day"

    invoke-virtual {v2, v10, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v8, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_hour:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "hour"

    invoke-virtual {v2, v10, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v8, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_minute:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "minute"

    invoke-virtual {v2, v10, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v8, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_second:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v10, "second"

    invoke-virtual {v2, v10, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1c
    iget-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_present:Z

    if-eqz v2, :cond_21

    new-instance v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v8, "tRNS"

    invoke-direct {v2, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v8, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_colorType:I

    const/4 v10, 0x3

    if-ne v8, v10, :cond_1d

    new-instance v12, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v5, "tRNS_Palette"

    invoke-direct {v12, v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_d
    iget-object v6, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_alpha:[B

    array-length v6, v6

    if-ge v5, v6, :cond_20

    new-instance v6, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v7, "tRNS_PaletteEntry"

    invoke-direct {v6, v7}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_alpha:[B

    aget-byte v7, v7, v5

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_1d
    if-nez v8, :cond_1e

    new-instance v12, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v4, "tRNS_Grayscale"

    invoke-direct {v12, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_gray:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v11, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_1e
    const/4 v4, 0x2

    if-ne v8, v4, :cond_1f

    new-instance v12, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v4, "tRNS_RGB"

    invoke-direct {v12, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_red:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v7, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_green:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v6, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_blue:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v5, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_1f
    move-object/from16 v12, v17

    :cond_20
    :goto_e
    invoke-virtual {v2, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_21
    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_23

    new-instance v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v4, "zTXt"

    invoke-direct {v2, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_f
    iget-object v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_22

    new-instance v5, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v6, "zTXtEntry"

    invoke-direct {v5, v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v14, v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_compressionMethod:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_compressionMethodNames:[Ljava/lang/String;

    aget-object v6, v7, v6

    invoke-virtual {v5, v3, v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_text:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v7, v18

    invoke-virtual {v5, v7, v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_22
    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_23
    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->unknownChunkType:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_25

    new-instance v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v3, "UnknownChunks"

    invoke-direct {v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_10
    iget-object v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->unknownChunkType:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_24

    new-instance v3, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v4, "UnknownChunk"

    invoke-direct {v3, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->unknownChunkType:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "type"

    invoke-virtual {v3, v5, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->unknownChunkData:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v3, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setUserObject(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_24
    invoke-virtual {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_25
    return-object v1
.end method

.method private getNumChannels()I
    .locals 3

    sget-object v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_numChannels:[I

    iget v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    aget v0, v0, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_present:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_colorType:I

    if-ne v2, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0
.end method

.method private getStringAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    return-object p3

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Required attribute "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not present!"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isISOLatin(Ljava/lang/String;Z)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    const/16 v4, 0xff

    if-gt v3, v4, :cond_0

    const/16 v4, 0x7e

    if-le v3, v4, :cond_1

    const/16 v4, 0xa1

    if-ge v3, v4, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private isValidKeyword(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    const/16 v2, 0x50

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/sun/imageio/plugins/png/PNGMetadata;->isISOLatin(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private mergeNativeTree(Lorg/w3c/dom/Node;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "javax_imageio_png_1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Root must be javax_imageio_png_1.0"

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_46

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IHDR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "compressionMethod"

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    const-string v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_width:I

    const-string v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_height:I

    sget-object v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepths:[Ljava/lang/String;

    const-string v3, "bitDepth"

    invoke-direct {v0, v1, v3, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getEnumeratedAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    sget-object v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorTypeNames:[Ljava/lang/String;

    const-string v3, "colorType"

    invoke-direct {v0, v1, v3, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getEnumeratedAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    sget-object v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_compressionMethodNames:[Ljava/lang/String;

    invoke-direct {v0, v1, v4, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getEnumeratedAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_compressionMethod:I

    sget-object v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_filterMethodNames:[Ljava/lang/String;

    const-string v3, "filterMethod"

    invoke-direct {v0, v1, v3, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getEnumeratedAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_filterMethod:I

    sget-object v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_interlaceMethodNames:[Ljava/lang/String;

    const-string v3, "interlaceMethod"

    invoke-direct {v0, v1, v3, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getEnumeratedAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_interlaceMethod:I

    iput-boolean v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_present:Z

    goto/16 :goto_e

    :cond_1
    const-string v3, "PLTE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "Bad value for PLTEEntry attribute index!"

    const/16 v7, 0xff

    const-string v9, "index"

    const-string v10, "blue"

    const-string v11, "green"

    const-string v12, "red"

    const/16 v13, 0x100

    const/4 v14, 0x0

    if-eqz v3, :cond_8

    new-array v2, v13, [B

    new-array v3, v13, [B

    new-array v4, v13, [B

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    if-nez v13, :cond_2

    const-string v15, "Palette has no entries!"

    invoke-direct {v0, v1, v15}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_2
    const/4 v8, -0x1

    :goto_2
    if-eqz v13, :cond_7

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    const-string v5, "PLTEEntry"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "Only a PLTEEntry may be a child of a PLTE!"

    invoke-direct {v0, v1, v5}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_3
    invoke-direct {v0, v13, v9}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_4

    if-le v5, v7, :cond_5

    :cond_4
    invoke-direct {v0, v1, v6}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_5
    if-le v5, v8, :cond_6

    move v8, v5

    :cond_6
    invoke-direct {v0, v13, v12}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v2, v5

    invoke-direct {v0, v13, v11}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v3, v5

    invoke-direct {v0, v13, v10}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v4, v5

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v13

    const/4 v5, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v8, v8, 0x1

    new-array v5, v8, [B

    iput-object v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_red:[B

    new-array v6, v8, [B

    iput-object v6, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_green:[B

    new-array v6, v8, [B

    iput-object v6, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_blue:[B

    invoke-static {v2, v14, v5, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_green:[B

    invoke-static {v3, v14, v2, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_blue:[B

    invoke-static {v4, v14, v2, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_present:Z

    goto/16 :goto_e

    :cond_8
    const-string v3, "bKGD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x2

    const/4 v15, 0x3

    const-string v8, "gray"

    if-eqz v3, :cond_e

    iput-boolean v14, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_present:Z

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_9

    const-string v3, "bKGD node has no children!"

    invoke-direct {v0, v1, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_9
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bKGD_Palette"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {v0, v2, v9}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_index:I

    iput v15, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_colorType:I

    goto :goto_3

    :cond_a
    const-string v4, "bKGD_Grayscale"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-direct {v0, v2, v8}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_gray:I

    iput v14, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_colorType:I

    goto :goto_3

    :cond_b
    const-string v4, "bKGD_RGB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-direct {v0, v2, v12}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_red:I

    invoke-direct {v0, v2, v11}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_green:I

    invoke-direct {v0, v2, v10}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_blue:I

    iput v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_colorType:I

    goto :goto_3

    :cond_c
    const-string v3, "Bad child of a bKGD node!"

    invoke-direct {v0, v1, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :goto_3
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_d

    const-string v2, "bKGD node has more than one child!"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_d
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_present:Z

    goto/16 :goto_e

    :cond_e
    const-string v3, "cHRM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v2, "whitePointX"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_whitePointX:I

    const-string v2, "whitePointY"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_whitePointY:I

    const-string v2, "redX"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_redX:I

    const-string v2, "redY"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_redY:I

    const-string v2, "greenX"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_greenX:I

    const-string v2, "greenY"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_greenY:I

    const-string v2, "blueX"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_blueX:I

    const-string v2, "blueY"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_blueY:I

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_present:Z

    goto/16 :goto_e

    :cond_f
    const/4 v3, 0x1

    const-string v15, "gAMA"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const-string v5, "value"

    if-eqz v15, :cond_10

    invoke-direct {v0, v1, v5}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->gAMA_gamma:I

    iput-boolean v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->gAMA_present:Z

    goto/16 :goto_e

    :cond_10
    const-string v3, "hIST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    new-array v2, v13, [C

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_11

    const-string v4, "hIST node has no children!"

    invoke-direct {v0, v1, v4}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_11
    const/4 v8, -0x1

    :goto_4
    if-eqz v3, :cond_16

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "hISTEntry"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "Only a hISTEntry may be a child of a hIST!"

    invoke-direct {v0, v1, v4}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_12
    invoke-direct {v0, v3, v9}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_13

    if-le v4, v7, :cond_14

    :cond_13
    const-string v6, "Bad value for histEntry attribute index!"

    invoke-direct {v0, v1, v6}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_14
    if-le v4, v8, :cond_15

    move v8, v4

    :cond_15
    invoke-direct {v0, v3, v5}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v6

    int-to-char v6, v6

    aput-char v6, v2, v4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_4

    :cond_16
    add-int/lit8 v8, v8, 0x1

    new-array v3, v8, [C

    iput-object v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->hIST_histogram:[C

    invoke-static {v2, v14, v3, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->hIST_present:Z

    goto/16 :goto_e

    :cond_17
    const-string v3, "iCCP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v15, "User object not a byte array!"

    if-eqz v3, :cond_1a

    const-string v2, "profileName"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_profileName:Ljava/lang/String;

    sget-object v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_compressionMethodNames:[Ljava/lang/String;

    invoke-direct {v0, v1, v4, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getEnumeratedAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_compressionMethod:I

    move-object v2, v1

    check-cast v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    invoke-virtual {v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->getUserObject()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_18

    const-string v3, "No ICCP profile present in user object!"

    invoke-direct {v0, v1, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_18
    instance-of v3, v2, [B

    if-nez v3, :cond_19

    invoke-direct {v0, v1, v15}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_19
    check-cast v2, [B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_compressedProfile:[B

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_present:Z

    goto/16 :goto_e

    :cond_1a
    const-string v3, "iTXt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v7, "text"

    const-string v13, "keyword"

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_5
    if-eqz v2, :cond_45

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "iTXtEntry"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "Only an iTXtEntry may be a child of an iTXt!"

    invoke-direct {v0, v1, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_1b
    invoke-direct {v0, v2, v13}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->isValidKeyword(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "compressionFlag"

    invoke-direct {v0, v2, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getBooleanAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    move-result v3

    iget-object v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_compressionFlag:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v2, v4}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_compressionMethod:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "languageTag"

    invoke-direct {v0, v2, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_languageTag:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "translatedKeyword"

    invoke-direct {v0, v2, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_translatedKeyword:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v2, v7}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_text:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_5

    :cond_1d
    const-string v3, "pHYs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v2, "pixelsPerUnitXAxis"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_pixelsPerUnitXAxis:I

    const-string v2, "pixelsPerUnitYAxis"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_pixelsPerUnitYAxis:I

    sget-object v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->unitSpecifierNames:[Ljava/lang/String;

    const-string v3, "unitSpecifier"

    invoke-direct {v0, v1, v3, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getEnumeratedAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_unitSpecifier:I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_present:Z

    goto/16 :goto_e

    :cond_1e
    const-string v3, "sBIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v14, "alpha"

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_present:Z

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_1f

    const-string v3, "sBIT node has no children!"

    invoke-direct {v0, v1, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_1f
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sBIT_Grayscale"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-direct {v0, v2, v8}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_grayBits:I

    const/4 v3, 0x0

    :goto_6
    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_colorType:I

    goto/16 :goto_7

    :cond_20
    const-string v4, "sBIT_GrayAlpha"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-direct {v0, v2, v8}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_grayBits:I

    invoke-direct {v0, v2, v14}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_alphaBits:I

    const/4 v3, 0x4

    goto :goto_6

    :cond_21
    const-string v4, "sBIT_RGB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-direct {v0, v2, v12}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_redBits:I

    invoke-direct {v0, v2, v11}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_greenBits:I

    invoke-direct {v0, v2, v10}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_blueBits:I

    const/4 v3, 0x2

    goto :goto_6

    :cond_22
    const-string v4, "sBIT_RGBAlpha"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-direct {v0, v2, v12}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_redBits:I

    invoke-direct {v0, v2, v11}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_greenBits:I

    invoke-direct {v0, v2, v10}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_blueBits:I

    invoke-direct {v0, v2, v14}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_alphaBits:I

    const/4 v3, 0x6

    goto :goto_6

    :cond_23
    const-string v4, "sBIT_Palette"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-direct {v0, v2, v12}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_redBits:I

    invoke-direct {v0, v2, v11}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_greenBits:I

    invoke-direct {v0, v2, v10}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_blueBits:I

    const/4 v3, 0x3

    goto :goto_6

    :cond_24
    const-string v3, "Bad child of an sBIT node!"

    invoke-direct {v0, v1, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :goto_7
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_25

    const-string v2, "sBIT node has more than one child!"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_25
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_present:Z

    goto/16 :goto_e

    :cond_26
    const-string v3, "sPLT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const-string v2, "name"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_paletteName:Ljava/lang/String;

    const-string v2, "sampleDepth"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_sampleDepth:I

    const/16 v2, 0x100

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v5, v2, [I

    new-array v7, v2, [I

    new-array v2, v2, [I

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    if-nez v8, :cond_27

    const-string v13, "sPLT node has no children!"

    invoke-direct {v0, v1, v13}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_27
    const/4 v13, -0x1

    :goto_8
    if-eqz v8, :cond_2c

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v2

    const-string v2, "sPLTEntry"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string v2, "Only an sPLTEntry may be a child of an sPLT!"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_28
    invoke-direct {v0, v8, v9}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_29

    const/16 v15, 0xff

    if-le v2, v15, :cond_2a

    :cond_29
    invoke-direct {v0, v1, v6}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_2a
    if-le v2, v13, :cond_2b

    move v13, v2

    :cond_2b
    invoke-direct {v0, v8, v12}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v15

    aput v15, v3, v2

    invoke-direct {v0, v8, v11}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v15

    aput v15, v4, v2

    invoke-direct {v0, v8, v10}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v15

    aput v15, v5, v2

    invoke-direct {v0, v8, v14}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v15

    aput v15, v7, v2

    const-string v15, "frequency"

    invoke-direct {v0, v8, v15}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v15

    aput v15, v16, v2

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object/from16 v2, v16

    goto :goto_8

    :cond_2c
    move-object/from16 v16, v2

    add-int/lit8 v13, v13, 0x1

    new-array v2, v13, [I

    iput-object v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_red:[I

    new-array v6, v13, [I

    iput-object v6, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_green:[I

    new-array v6, v13, [I

    iput-object v6, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_blue:[I

    new-array v6, v13, [I

    iput-object v6, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_alpha:[I

    new-array v6, v13, [I

    iput-object v6, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_frequency:[I

    const/4 v6, 0x0

    invoke-static {v3, v6, v2, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_green:[I

    invoke-static {v4, v6, v2, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_blue:[I

    invoke-static {v5, v6, v2, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_alpha:[I

    invoke-static {v7, v6, v2, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_frequency:[I

    move-object/from16 v3, v16

    invoke-static {v3, v6, v2, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_present:Z

    goto/16 :goto_e

    :cond_2d
    const/4 v3, 0x1

    const-string v6, "sRGB"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    sget-object v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->renderingIntentNames:[Ljava/lang/String;

    const-string v4, "renderingIntent"

    invoke-direct {v0, v1, v4, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getEnumeratedAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sRGB_renderingIntent:I

    iput-boolean v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sRGB_present:Z

    goto/16 :goto_e

    :cond_2e
    const-string v3, "tEXt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_9
    if-eqz v2, :cond_45

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tEXtEntry"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "Only an tEXtEntry may be a child of an tEXt!"

    invoke-direct {v0, v1, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_2f
    invoke-direct {v0, v2, v13}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v2, v5}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_text:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_9

    :cond_30
    const-string v3, "tIME"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    const-string v2, "year"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_year:I

    const-string v2, "month"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_month:I

    const-string v2, "day"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_day:I

    const-string v2, "hour"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_hour:I

    const-string v2, "minute"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_minute:I

    const-string v2, "second"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_second:I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_present:Z

    goto/16 :goto_e

    :cond_31
    const-string v3, "tRNS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_present:Z

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_32

    const-string v3, "tRNS node has no children!"

    invoke-direct {v0, v1, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_32
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "tRNS_Palette"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    const/16 v4, 0x100

    new-array v3, v4, [B

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    if-nez v4, :cond_33

    const-string v5, "tRNS_Palette node has no children!"

    invoke-direct {v0, v1, v5}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_33
    const/4 v8, -0x1

    :goto_a
    if-eqz v4, :cond_38

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tRNS_PaletteEntry"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    const-string v5, "Only a tRNS_PaletteEntry may be a child of a tRNS_Palette!"

    invoke-direct {v0, v1, v5}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_34
    invoke-direct {v0, v4, v9}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0xff

    if-ltz v5, :cond_35

    if-le v5, v6, :cond_36

    :cond_35
    const-string v7, "Bad value for tRNS_PaletteEntry attribute index!"

    invoke-direct {v0, v1, v7}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_36
    if-le v5, v8, :cond_37

    move v8, v5

    :cond_37
    invoke-direct {v0, v4, v14}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v3, v5

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    goto :goto_a

    :cond_38
    add-int/lit8 v8, v8, 0x1

    new-array v4, v8, [B

    iput-object v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_alpha:[B

    const/4 v5, 0x3

    iput v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_colorType:I

    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    :cond_39
    const/4 v5, 0x0

    const-string v4, "tRNS_Grayscale"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-direct {v0, v2, v8}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_gray:I

    iput v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_colorType:I

    goto :goto_b

    :cond_3a
    const-string v4, "tRNS_RGB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-direct {v0, v2, v12}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_red:I

    invoke-direct {v0, v2, v11}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_green:I

    invoke-direct {v0, v2, v10}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_blue:I

    const/4 v3, 0x2

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_colorType:I

    goto :goto_b

    :cond_3b
    const-string v3, "Bad child of a tRNS node!"

    invoke-direct {v0, v1, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :goto_b
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_3c

    const-string v2, "tRNS node has more than one child!"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_3c
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_present:Z

    goto/16 :goto_e

    :cond_3d
    const-string v3, "zTXt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_c
    if-eqz v2, :cond_45

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "zTXtEntry"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    const-string v3, "Only an zTXtEntry may be a child of an zTXt!"

    invoke-direct {v0, v1, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_3e
    invoke-direct {v0, v2, v13}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_compressionMethodNames:[Ljava/lang/String;

    invoke-direct {v0, v2, v4, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getEnumeratedAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    iget-object v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_compressionMethod:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v2, v7}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_text:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_c

    :cond_3f
    const-string v3, "UnknownChunks"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_d
    if-eqz v2, :cond_45

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UnknownChunk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string v3, "Only an UnknownChunk may be a child of an UnknownChunks!"

    invoke-direct {v0, v1, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_40
    const-string v3, "type"

    invoke-direct {v0, v2, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    invoke-virtual {v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->getUserObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_41

    const-string v5, "Chunk type must be 4 characters!"

    invoke-direct {v0, v2, v5}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_41
    if-nez v4, :cond_42

    const-string v5, "No chunk data present in user object!"

    invoke-direct {v0, v2, v5}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_42
    instance-of v5, v4, [B

    if-nez v5, :cond_43

    invoke-direct {v0, v2, v15}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_43
    iget-object v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->unknownChunkType:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->unknownChunkData:Ljava/util/ArrayList;

    check-cast v4, [B

    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_d

    :cond_44
    const-string v2, "Unknown child of root node!"

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    :cond_45
    :goto_e
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto/16 :goto_1

    :cond_46
    return-void
.end method

.method private mergeStandardTree(Lorg/w3c/dom/Node;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "javax_imageio_1.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Root must be javax_imageio_1.0"

    move-object/from16 v2, p1

    invoke-direct {v0, v2, v1}, Lcom/sun/imageio/plugins/png/PNGMetadata;->fatal(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2a

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Chroma"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "value"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_8

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_29

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v9, "Gamma"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-direct {v0, v2, v6}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getFloatAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)F

    move-result v3

    iput-boolean v7, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->gAMA_present:Z

    const v9, 0x47c35000    # 100000.0f

    mul-float/2addr v3, v9

    float-to-double v9, v3

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v11

    double-to-int v3, v9

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->gAMA_gamma:I

    goto/16 :goto_5

    :cond_1
    const-string v9, "Palette"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "blue"

    const-string v11, "green"

    const-string v12, "red"

    if-eqz v9, :cond_4

    const/16 v3, 0x100

    new-array v9, v3, [B

    new-array v13, v3, [B

    new-array v3, v3, [B

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v14

    const/4 v15, -0x1

    :goto_3
    if-eqz v14, :cond_3

    const-string v4, "index"

    invoke-direct {v0, v14, v4}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    const/16 v5, 0xff

    if-gt v4, v5, :cond_2

    invoke-direct {v0, v14, v12}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v9, v4

    invoke-direct {v0, v14, v11}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v13, v4

    invoke-direct {v0, v14, v10}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    if-le v4, v15, :cond_2

    move v15, v4

    :cond_2
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v14

    goto :goto_3

    :cond_3
    add-int/lit8 v15, v15, 0x1

    new-array v4, v15, [B

    iput-object v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_red:[B

    new-array v5, v15, [B

    iput-object v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_green:[B

    new-array v5, v15, [B

    iput-object v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_blue:[B

    invoke-static {v9, v8, v4, v8, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_green:[B

    invoke-static {v13, v8, v4, v8, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_blue:[B

    invoke-static {v3, v8, v4, v8, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v7, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_present:Z

    goto :goto_5

    :cond_4
    const-string v4, "BackgroundIndex"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput-boolean v7, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_present:Z

    const/4 v3, 0x3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_colorType:I

    invoke-direct {v0, v2, v6}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_index:I

    goto :goto_5

    :cond_5
    const-string v4, "BackgroundColor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {v0, v2, v12}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v2, v11}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v2, v10}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v5

    if-ne v3, v4, :cond_6

    if-ne v3, v5, :cond_6

    iput v8, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_colorType:I

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_gray:I

    goto :goto_4

    :cond_6
    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_red:I

    iput v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_green:I

    iput v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_blue:I

    :goto_4
    iput-boolean v7, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_present:Z

    :cond_7
    :goto_5
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto/16 :goto_2

    :cond_8
    const-string v3, "Compression"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_6
    if-eqz v2, :cond_29

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NumProgressiveScans"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {v0, v2, v6}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    if-le v3, v7, :cond_9

    move v3, v7

    goto :goto_7

    :cond_9
    move v3, v8

    :goto_7
    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_interlaceMethod:I

    :cond_a
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_6

    :cond_b
    const-string v3, "Data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_8
    if-eqz v2, :cond_29

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BitsPerSample"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_13

    invoke-direct {v0, v2, v6}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    const/4 v3, -0x1

    :cond_c
    :goto_9
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    if-le v9, v3, :cond_c

    move v3, v9

    goto :goto_9

    :cond_d
    if-ge v3, v7, :cond_e

    move v3, v7

    :cond_e
    const/4 v4, 0x3

    if-ne v3, v4, :cond_f

    move v3, v5

    :cond_f
    const/16 v4, 0x8

    if-gt v3, v5, :cond_10

    if-ge v3, v4, :cond_11

    :cond_10
    move v3, v4

    :cond_11
    if-le v3, v4, :cond_12

    const/16 v3, 0x10

    :cond_12
    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    goto/16 :goto_c

    :cond_13
    const-string v4, "SignificantBitsPerSample"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-direct {v0, v2, v6}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    if-ne v3, v7, :cond_14

    iput v8, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_colorType:I

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_grayBits:I

    :goto_a
    const/4 v10, 0x3

    goto :goto_b

    :cond_14
    const/4 v9, 0x2

    if-ne v3, v9, :cond_15

    iput v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_colorType:I

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_grayBits:I

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_alphaBits:I

    goto :goto_a

    :cond_15
    const/4 v10, 0x3

    if-ne v3, v10, :cond_16

    iput v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_colorType:I

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_redBits:I

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_greenBits:I

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_blueBits:I

    goto :goto_b

    :cond_16
    if-ne v3, v5, :cond_17

    const/4 v9, 0x6

    iput v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_colorType:I

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_redBits:I

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_greenBits:I

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_blueBits:I

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_alphaBits:I

    :cond_17
    :goto_b
    if-lt v3, v7, :cond_19

    if-gt v3, v5, :cond_19

    iput-boolean v7, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_present:Z

    goto :goto_d

    :cond_18
    :goto_c
    const/4 v10, 0x3

    :cond_19
    :goto_d
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto/16 :goto_8

    :cond_1a
    const-string v3, "Dimension"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    const/high16 v3, -0x40800000    # -1.0f

    move v4, v3

    move v5, v4

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_e
    if-eqz v2, :cond_1e

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "PixelAspectRatio"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    invoke-direct {v0, v2, v6}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getFloatAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)F

    move-result v5

    move v11, v7

    goto :goto_f

    :cond_1b
    const-string v13, "HorizontalPixelSize"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    invoke-direct {v0, v2, v6}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getFloatAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)F

    move-result v3

    move v9, v7

    goto :goto_f

    :cond_1c
    const-string v13, "VerticalPixelSize"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    invoke-direct {v0, v2, v6}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getFloatAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)F

    move-result v4

    move v10, v7

    :cond_1d
    :goto_f
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_e

    :cond_1e
    if-eqz v9, :cond_1f

    if-eqz v10, :cond_1f

    iput-boolean v7, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_present:Z

    iput v7, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_unitSpecifier:I

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v2

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_pixelsPerUnitXAxis:I

    mul-float/2addr v4, v2

    add-float/2addr v4, v5

    float-to-int v2, v4

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_pixelsPerUnitYAxis:I

    goto/16 :goto_16

    :cond_1f
    if-eqz v11, :cond_29

    iput-boolean v7, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_present:Z

    iput v8, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_unitSpecifier:I

    :goto_10
    const/16 v2, 0x64

    if-ge v7, v2, :cond_21

    int-to-float v2, v7

    mul-float/2addr v2, v5

    float-to-int v2, v2

    div-int/2addr v2, v7

    int-to-float v2, v2

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v2, v2, v8

    if-gez v2, :cond_20

    goto :goto_11

    :cond_20
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_21
    :goto_11
    int-to-float v2, v7

    mul-float/2addr v5, v2

    float-to-int v2, v5

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_pixelsPerUnitXAxis:I

    iput v7, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_pixelsPerUnitYAxis:I

    goto/16 :goto_16

    :cond_22
    const-string v3, "Document"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_12
    if-eqz v2, :cond_29

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImageModificationTime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    iput-boolean v7, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_present:Z

    const-string v3, "year"

    invoke-direct {v0, v2, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_year:I

    const-string v3, "month"

    invoke-direct {v0, v2, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_month:I

    const-string v3, "day"

    invoke-direct {v0, v2, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_day:I

    const-string v3, "hour"

    invoke-direct {v0, v2, v3, v8, v8}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZ)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_hour:I

    const-string v3, "minute"

    invoke-direct {v0, v2, v3, v8, v8}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZ)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_minute:I

    const-string v3, "second"

    invoke-direct {v0, v2, v3, v8, v8}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getIntAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;IZ)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_second:I

    :cond_23
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_12

    :cond_24
    const-string v3, "Text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_13
    if-eqz v2, :cond_29

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TextEntry"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const-string v3, "keyword"

    const-string v4, ""

    invoke-direct {v0, v2, v3, v4, v8}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v6}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "language"

    invoke-direct {v0, v2, v9, v4, v8}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const-string v9, "compression"

    const-string v10, "none"

    invoke-direct {v0, v2, v9, v10, v8}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getAttribute(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v3}, Lcom/sun/imageio/plugins/png/PNGMetadata;->isValidKeyword(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_25

    goto :goto_15

    :cond_25
    invoke-direct {v0, v5, v7}, Lcom/sun/imageio/plugins/png/PNGMetadata;->isISOLatin(Ljava/lang/String;Z)Z

    move-result v10

    const-string v11, "zip"

    if-eqz v10, :cond_27

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    iget-object v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_text:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_compressionMethod:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_26
    iget-object v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_text:Ljava/util/ArrayList;

    goto :goto_14

    :cond_27
    iget-object v10, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_compressionFlag:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_compressionMethod:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_languageTag:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_translatedKeyword:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_text:Ljava/util/ArrayList;

    :goto_14
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    :goto_15
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto/16 :goto_13

    :cond_29
    :goto_16
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto/16 :goto_1

    :cond_2a
    return-void
.end method

.method private repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return-object p1

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, p2

    sub-int/2addr v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    if-ge v0, p2, :cond_1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/imageio/plugins/png/PNGMetadata;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->unknownChunkData:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/sun/imageio/plugins/png/PNGMetadata;->cloneBytesArrayList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->unknownChunkData:Ljava/util/ArrayList;

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    const-string v0, "javax_imageio_png_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getNativeTree()Lorg/w3c/dom/Node;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "javax_imageio_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;->getStandardTree()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a recognized format!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStandardChromaNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 13

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Chroma"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "ColorSpaceType"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->colorSpaceTypeNames:[Ljava/lang/String;

    iget v3, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    aget-object v2, v2, v3

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "NumChannels"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getNumChannels()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->gAMA_present:Z

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "Gamma"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->gAMA_gamma:I

    int-to-float v2, v2

    const v4, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "BlackIsZero"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "TRUE"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_present:Z

    const-string v2, "blue"

    const-string v4, "green"

    const-string v5, "red"

    const/4 v6, 0x3

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_present:Z

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_colorType:I

    if-ne v1, v6, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v7

    :goto_0
    new-instance v8, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v9, "Palette"

    invoke-direct {v8, v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object v9, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_red:[B

    array-length v9, v9

    if-ge v7, v9, :cond_4

    new-instance v9, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v10, "PaletteEntry"

    invoke-direct {v9, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "index"

    invoke-virtual {v9, v11, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_red:[B

    aget-byte v10, v10, v7

    const/16 v11, 0xff

    and-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v5, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_green:[B

    aget-byte v10, v10, v7

    and-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v4, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_blue:[B

    aget-byte v10, v10, v7

    and-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    iget-object v10, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_alpha:[B

    array-length v12, v10

    if-ge v7, v12, :cond_2

    aget-byte v10, v10, v7

    and-int/2addr v11, v10

    :cond_2
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "alpha"

    invoke-virtual {v9, v11, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v8, v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_5
    iget-boolean v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_present:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_colorType:I

    if-ne v1, v6, :cond_6

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "BackgroundIndex"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_index:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v3, "BackgroundColor"

    invoke-direct {v1, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_colorType:I

    if-nez v3, :cond_7

    iget v3, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_gray:I

    move v6, v3

    move v7, v6

    goto :goto_2

    :cond_7
    iget v3, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_red:I

    iget v6, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_green:I

    iget v7, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_blue:I

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_8
    return-object v0
.end method

.method public getStandardCompressionNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 4

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Compression"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "CompressionTypeName"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "value"

    const-string v3, "deflate"

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v3, "Lossless"

    invoke-direct {v1, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v3, "TRUE"

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v3, "NumProgressiveScans"

    invoke-direct {v1, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_interlaceMethod:I

    if-nez v3, :cond_0

    const-string v3, "1"

    goto :goto_0

    :cond_0
    const-string v3, "7"

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getStandardDataNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 7

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Data"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "PlanarConfiguration"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "value"

    const-string v3, "PixelInterleaved"

    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v3, "SampleFormat"

    invoke-direct {v1, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const-string v3, "Index"

    goto :goto_0

    :cond_0
    const-string v3, "UnsignedIntegral"

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v4, "BitsPerSample"

    invoke-direct {v3, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGMetadata;->getNumChannels()I

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/sun/imageio/plugins/png/PNGMetadata;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_present:Z

    if-eqz v1, :cond_5

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v3, "SignificantBitsPerSample"

    invoke-direct {v1, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_colorType:I

    const/4 v4, 0x4

    const-string v5, " "

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_redBits:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_greenBits:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_blueBits:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    :goto_1
    iget v3, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_grayBits:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget v6, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_colorType:I

    if-eq v6, v4, :cond_3

    const/4 v4, 0x6

    if-ne v6, v4, :cond_4

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_alphaBits:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    invoke-virtual {v1, v2, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_5
    return-object v0
.end method

.method public getStandardDimensionNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 5

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Dimension"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "PixelAspectRatio"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_present:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_pixelsPerUnitXAxis:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_pixelsPerUnitYAxis:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "ImageOrientation"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const-string v2, "Normal"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_present:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_unitSpecifier:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "HorizontalPixelSize"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_pixelsPerUnitXAxis:I

    int-to-float v2, v2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "VerticalPixelSize"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_pixelsPerUnitYAxis:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    return-object v0
.end method

.method public getStandardDocumentNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 4

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_present:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Document"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "ImageModificationTime"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_year:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "year"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_month:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "month"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_day:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "day"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_hour:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hour"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_minute:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "minute"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_second:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "second"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getStandardTextNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 12

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Text"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, "none"

    const-string v5, "value"

    const-string v6, "keyword"

    const-string v7, "TextEntry"

    const-string v8, "compression"

    if-ge v2, v3, :cond_1

    new-instance v3, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    invoke-direct {v3, v7}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_text:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "encoding"

    const-string v6, "ISO-8859-1"

    invoke-virtual {v3, v5, v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v9, "zip"

    if-ge v2, v3, :cond_3

    new-instance v3, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    invoke-direct {v3, v7}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3, v6, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_text:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3, v5, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_languageTag:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "language"

    invoke-virtual {v3, v11, v10}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_compressionFlag:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v3, v8, v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v8, v4}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    new-instance v2, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    invoke-direct {v2, v7}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_text:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-object v0
.end method

.method public getStandardTransparencyNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
    .locals 6

    new-instance v0, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v1, "Transparency"

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "Alpha"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-boolean v3, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_present:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_colorType:I

    if-ne v3, v2, :cond_0

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_alpha:[B

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    const-string v2, "nonpremultipled"

    goto :goto_2

    :cond_2
    const-string v2, "none"

    :goto_2
    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_present:Z

    if-eqz v1, :cond_5

    new-instance v1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;

    const-string v2, "TransparentColor"

    invoke-direct {v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_colorType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_red:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_green:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_blue:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v3, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    if-nez v2, :cond_4

    iget v2, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_gray:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    :goto_4
    invoke-virtual {v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_5
    return-object v0
.end method

.method public initialize(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getColorModel()Lorg/apache/poi/java/awt/image/ColorModel;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->getSampleModel()Lorg/apache/poi/java/awt/image/SampleModel;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/poi/java/awt/image/SampleModel;->getSampleSize()[I

    move-result-object v3

    const/4 v4, 0x0

    aget v5, v3, v4

    const/4 v6, 0x1

    move v7, v6

    :goto_0
    array-length v8, v3

    if-ge v7, v8, :cond_1

    aget v8, v3, v7

    if-le v8, v5, :cond_0

    aget v5, v3, v7

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    array-length v3, v3

    const/16 v7, 0x8

    if-le v3, v6, :cond_2

    if-ge v5, v7, :cond_2

    move v5, v7

    :cond_2
    const/4 v3, 0x2

    const/16 v8, 0x10

    const/4 v9, 0x4

    if-le v5, v3, :cond_3

    if-ge v5, v9, :cond_3

    move v5, v9

    goto :goto_1

    :cond_3
    if-le v5, v9, :cond_4

    if-ge v5, v7, :cond_4

    move v5, v7

    goto :goto_1

    :cond_4
    if-le v5, v7, :cond_5

    if-ge v5, v8, :cond_5

    move v5, v8

    goto :goto_1

    :cond_5
    if-gt v5, v8, :cond_19

    :goto_1
    iput v5, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    instance-of v10, v2, Lorg/apache/poi/java/awt/image/IndexColorModel;

    const/4 v11, 0x3

    if-eqz v10, :cond_12

    move-object v1, v2

    check-cast v1, Lorg/apache/poi/java/awt/image/IndexColorModel;

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getMapSize()I

    move-result v3

    new-array v10, v3, [B

    invoke-virtual {v1, v10}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getReds([B)V

    new-array v12, v3, [B

    invoke-virtual {v1, v12}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getGreens([B)V

    new-array v13, v3, [B

    invoke-virtual {v1, v13}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getBlues([B)V

    iget-boolean v14, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_present:Z

    if-eqz v14, :cond_7

    iget v14, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    if-eq v14, v11, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    move v6, v4

    goto :goto_5

    :cond_7
    :goto_3
    const/16 v14, 0xff

    iget v15, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    shl-int v15, v6, v15

    sub-int/2addr v15, v6

    div-int/2addr v14, v15

    move v15, v4

    :goto_4
    if-ge v15, v3, :cond_9

    aget-byte v6, v10, v15

    mul-int v11, v15, v14

    int-to-byte v11, v11

    if-ne v6, v11, :cond_6

    aget-byte v11, v12, v15

    if-ne v6, v11, :cond_6

    aget-byte v11, v13, v15

    if-eq v6, v11, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x1

    const/4 v11, 0x3

    goto :goto_4

    :cond_9
    const/4 v6, 0x1

    :goto_5
    invoke-virtual {v2}, Lorg/apache/poi/java/awt/image/ColorModel;->hasAlpha()Z

    move-result v2

    const/4 v11, 0x0

    if-eqz v2, :cond_a

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Lorg/apache/poi/java/awt/image/IndexColorModel;->getAlphas([B)V

    goto :goto_6

    :cond_a
    move-object v3, v11

    :goto_6
    if-eqz v6, :cond_b

    if-eqz v2, :cond_b

    if-eq v5, v7, :cond_15

    if-ne v5, v8, :cond_b

    goto/16 :goto_c

    :cond_b
    if-eqz v6, :cond_c

    if-nez v2, :cond_c

    goto/16 :goto_a

    :cond_c
    const/4 v1, 0x3

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_present:Z

    iput-object v11, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_order:[I

    invoke-virtual {v10}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_red:[B

    invoke-virtual {v12}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_green:[B

    invoke-virtual {v13}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_blue:[B

    if-eqz v2, :cond_13

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_present:Z

    const/4 v1, 0x3

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_colorType:I

    array-length v1, v3

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_order:[I

    array-length v1, v3

    new-array v1, v1, [B

    move v2, v4

    move v5, v2

    :goto_7
    array-length v6, v3

    const/4 v7, -0x1

    if-ge v2, v6, :cond_e

    aget-byte v6, v3, v2

    if-eq v6, v7, :cond_d

    iget-object v6, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_order:[I

    aput v5, v6, v2

    aget-byte v6, v3, v2

    aput-byte v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_e
    move v2, v4

    move v6, v5

    :goto_8
    array-length v8, v3

    if-ge v2, v8, :cond_10

    aget-byte v8, v3, v2

    if-ne v8, v7, :cond_f

    iget-object v8, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_order:[I

    add-int/lit8 v9, v6, 0x1

    aput v6, v8, v2

    move v6, v9

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_10
    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_red:[B

    iget-object v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_green:[B

    iget-object v6, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_blue:[B

    array-length v7, v2

    new-array v8, v7, [B

    iput-object v8, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_red:[B

    new-array v8, v7, [B

    iput-object v8, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_green:[B

    new-array v8, v7, [B

    iput-object v8, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_blue:[B

    move v8, v4

    :goto_9
    if-ge v8, v7, :cond_11

    iget-object v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_red:[B

    iget-object v10, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_order:[I

    aget v11, v10, v8

    aget-byte v12, v2, v8

    aput-byte v12, v9, v11

    iget-object v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_green:[B

    aget v11, v10, v8

    aget-byte v12, v3, v8

    aput-byte v12, v9, v11

    iget-object v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_blue:[B

    aget v10, v10, v8

    aget-byte v11, v6, v8

    aput-byte v11, v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_11
    new-array v2, v5, [B

    iput-object v2, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_alpha:[B

    invoke-static {v1, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    :cond_12
    move v2, v6

    if-ne v1, v2, :cond_14

    :goto_a
    iput v4, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    :cond_13
    :goto_b
    const/4 v1, 0x1

    goto :goto_d

    :cond_14
    if-ne v1, v3, :cond_16

    :cond_15
    :goto_c
    iput v9, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    goto :goto_b

    :cond_16
    const/4 v2, 0x3

    if-ne v1, v2, :cond_17

    iput v3, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    goto :goto_b

    :cond_17
    if-ne v1, v9, :cond_18

    const/4 v1, 0x6

    iput v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    goto :goto_b

    :goto_d
    iput-boolean v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_present:Z

    return-void

    :cond_18
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Number of bands not 1-4!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "bitDepth > 16!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    .locals 2

    const-string v0, "javax_imageio_png_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "root == null!"

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->mergeNativeTree(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "javax_imageio_1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->mergeStandardTree(Lorg/w3c/dom/Node;)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a recognized format!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_present:Z

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_present:Z

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_present:Z

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_present:Z

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->gAMA_present:Z

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->hIST_present:Z

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_present:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_keyword:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_compressionFlag:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_compressionMethod:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_languageTag:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_translatedKeyword:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_text:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_present:Z

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_present:Z

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_present:Z

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sRGB_present:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_keyword:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_text:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_present:Z

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_present:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_keyword:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_compressionMethod:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_text:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->unknownChunkType:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->unknownChunkData:Ljava/util/ArrayList;

    return-void
.end method
