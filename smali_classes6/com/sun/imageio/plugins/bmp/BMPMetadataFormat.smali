.class public Lcom/sun/imageio/plugins/bmp/BMPMetadataFormat;
.super Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;
.source "SourceFile"


# static fields
.field private static instance:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 13

    const-string v10, "javax_imageio_bmp_1.0"

    const/4 v11, 0x2

    invoke-direct {p0, v10, v11}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;-><init>(Ljava/lang/String;I)V

    const-string v0, "ImageDescriptor"

    const/4 v12, 0x0

    invoke-virtual {p0, v0, v10, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "ImageDescriptor"

    const-string v2, "bmpVersion"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    const-string v1, "ImageDescriptor"

    const-string v2, "width"

    const/4 v3, 0x2

    const-string v6, "0"

    const-string v7, "65535"

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "ImageDescriptor"

    const-string v2, "height"

    const-string v6, "1"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "ImageDescriptor"

    const-string v2, "bitsPerPixel"

    const-string v6, "1"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "ImageDescriptor"

    const-string v2, "compression"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    const-string v1, "ImageDescriptor"

    const-string v2, "imageSize"

    const/4 v4, 0x1

    const-string v6, "1"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "PixelsPerMeter"

    invoke-virtual {p0, v0, v10, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "PixelsPerMeter"

    const-string v2, "X"

    const/4 v4, 0x0

    const-string v6, "1"

    const-string v7, "65535"

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "PixelsPerMeter"

    const-string v2, "Y"

    const-string v6, "1"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "ColorsUsed"

    invoke-virtual {p0, v0, v10, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "ColorsUsed"

    const-string v2, "value"

    const/4 v4, 0x1

    const-string v6, "0"

    const-string v7, "65535"

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "ColorsImportant"

    invoke-virtual {p0, v0, v10, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "ColorsImportant"

    const-string v2, "value"

    const/4 v4, 0x0

    const-string v6, "0"

    const-string v7, "65535"

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "BI_BITFIELDS_Mask"

    invoke-virtual {p0, v0, v10, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "BI_BITFIELDS_Mask"

    const-string v2, "red"

    const-string v6, "0"

    const-string v7, "65535"

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "BI_BITFIELDS_Mask"

    const-string v2, "green"

    const-string v6, "0"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "BI_BITFIELDS_Mask"

    const-string v2, "blue"

    const-string v6, "0"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "ColorSpace"

    invoke-virtual {p0, v0, v10, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "ColorSpace"

    const-string v2, "value"

    const-string v6, "0"

    const-string v7, "65535"

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "LCS_CALIBRATED_RGB"

    invoke-virtual {p0, v0, v10, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "LCS_CALIBRATED_RGB"

    const-string v2, "redX"

    const/4 v3, 0x4

    const-string v6, "0"

    const-string v7, "65535"

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "LCS_CALIBRATED_RGB"

    const-string v2, "redY"

    const-string v6, "0"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "LCS_CALIBRATED_RGB"

    const-string v2, "redZ"

    const-string v6, "0"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "LCS_CALIBRATED_RGB"

    const-string v2, "greenX"

    const-string v6, "0"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "LCS_CALIBRATED_RGB"

    const-string v2, "greenY"

    const-string v6, "0"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "LCS_CALIBRATED_RGB"

    const-string v2, "greenZ"

    const-string v6, "0"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "LCS_CALIBRATED_RGB"

    const-string v2, "blueX"

    const-string v6, "0"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "LCS_CALIBRATED_RGB"

    const-string v2, "blueY"

    const-string v6, "0"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "LCS_CALIBRATED_RGB"

    const-string v2, "blueZ"

    const-string v6, "0"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "LCS_CALIBRATED_RGB_GAMMA"

    invoke-virtual {p0, v0, v10, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "LCS_CALIBRATED_RGB_GAMMA"

    const-string v2, "red"

    const/4 v3, 0x2

    const-string v6, "0"

    const-string v7, "65535"

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "LCS_CALIBRATED_RGB_GAMMA"

    const-string v2, "green"

    const-string v6, "0"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "LCS_CALIBRATED_RGB_GAMMA"

    const-string v2, "blue"

    const-string v6, "0"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "Intent"

    invoke-virtual {p0, v0, v10, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "Intent"

    const-string v2, "value"

    const-string v6, "0"

    const-string v7, "65535"

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v6, "Palette"

    const/16 v0, 0x100

    invoke-virtual {p0, v6, v10, v11, v0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v1, "Palette"

    const-string v2, "sizeOfPalette"

    const/4 v4, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    const-string v0, "sortFlag"

    invoke-virtual {p0, v6, v0, v12, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addBooleanAttribute(Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "PaletteEntry"

    invoke-virtual {p0, v0, v6, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "PaletteEntry"

    const-string v2, "index"

    const-string v6, "0"

    const-string v7, "255"

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "PaletteEntry"

    const-string v2, "red"

    const-string v6, "0"

    const-string v7, "255"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "PaletteEntry"

    const-string v2, "green"

    const-string v6, "0"

    const-string v7, "255"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "PaletteEntry"

    const-string v2, "blue"

    const-string v6, "0"

    const-string v7, "255"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "CommentExtensions"

    const/4 v1, 0x1

    const v2, 0x7fffffff

    invoke-virtual {p0, v0, v10, v1, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v1, "CommentExtension"

    invoke-virtual {p0, v1, v0, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "CommentExtension"

    const-string v2, "value"

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
    .locals 2

    const-class v0, Lcom/sun/imageio/plugins/bmp/BMPMetadataFormat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sun/imageio/plugins/bmp/BMPMetadataFormat;->instance:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sun/imageio/plugins/bmp/BMPMetadataFormat;

    invoke-direct {v1}, Lcom/sun/imageio/plugins/bmp/BMPMetadataFormat;-><init>()V

    sput-object v1, Lcom/sun/imageio/plugins/bmp/BMPMetadataFormat;->instance:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;

    :cond_0
    sget-object v1, Lcom/sun/imageio/plugins/bmp/BMPMetadataFormat;->instance:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public canNodeAppear(Ljava/lang/String;Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
