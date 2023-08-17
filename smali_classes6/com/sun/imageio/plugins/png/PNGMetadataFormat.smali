.class public Lcom/sun/imageio/plugins/png/PNGMetadataFormat;
.super Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;
.source "SourceFile"


# static fields
.field private static VALUE_0:Ljava/lang/String; = "0"

.field private static VALUE_1:Ljava/lang/String; = "1"

.field private static VALUE_12:Ljava/lang/String; = "12"

.field private static VALUE_23:Ljava/lang/String; = "23"

.field private static VALUE_255:Ljava/lang/String; = "255"

.field private static VALUE_31:Ljava/lang/String; = "31"

.field private static VALUE_59:Ljava/lang/String; = "59"

.field private static VALUE_60:Ljava/lang/String; = "60"

.field private static VALUE_MAX_16:Ljava/lang/String; = "65535"

.field private static VALUE_MAX_32:Ljava/lang/String; = "2147483647"

.field private static instance:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 18

    move-object/from16 v10, p0

    const-string v11, "javax_imageio_png_1.0"

    const/4 v0, 0x2

    invoke-direct {v10, v11, v0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;-><init>(Ljava/lang/String;I)V

    const-string v0, "IHDR"

    const/4 v12, 0x0

    invoke-virtual {v10, v0, v11, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_1:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_32:Ljava/lang/String;

    const-string v1, "IHDR"

    const-string v2, "width"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_1:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_32:Ljava/lang/String;

    const-string v1, "IHDR"

    const-string v2, "height"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepths:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v1, "IHDR"

    const-string v2, "bitDepth"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    const-string v0, "Grayscale"

    const-string v1, "RGB"

    const-string v2, "Palette"

    const-string v3, "GrayAlpha"

    const-string v4, "RGBAlpha"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v1, "IHDR"

    const-string v2, "colorType"

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    sget-object v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_compressionMethodNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v1, "IHDR"

    const-string v2, "compressionMethod"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    sget-object v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_filterMethodNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v1, "IHDR"

    const-string v2, "filterMethod"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    sget-object v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_interlaceMethodNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v1, "IHDR"

    const-string v2, "interlaceMethod"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    const-string v0, "PLTE"

    const/4 v13, 0x1

    const/16 v14, 0x100

    invoke-virtual {v10, v0, v11, v13, v14}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v1, "PLTEEntry"

    invoke-virtual {v10, v1, v0, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "PLTEEntry"

    const-string v2, "index"

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "PLTEEntry"

    const-string v2, "red"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "PLTEEntry"

    const-string v2, "green"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "PLTEEntry"

    const-string v2, "blue"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v15, "bKGD"

    const/4 v9, 0x3

    invoke-virtual {v10, v15, v11, v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "bKGD_Grayscale"

    invoke-virtual {v10, v0, v15, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_16:Ljava/lang/String;

    const-string v1, "bKGD_Grayscale"

    const-string v2, "gray"

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v9, v16

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "bKGD_RGB"

    invoke-virtual {v10, v0, v15, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_16:Ljava/lang/String;

    const-string v1, "bKGD_RGB"

    const-string v2, "red"

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_16:Ljava/lang/String;

    const-string v1, "bKGD_RGB"

    const-string v2, "green"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_16:Ljava/lang/String;

    const-string v1, "bKGD_RGB"

    const-string v2, "blue"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "bKGD_Palette"

    invoke-virtual {v10, v0, v15, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "bKGD_Palette"

    const-string v2, "index"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "cHRM"

    invoke-virtual {v10, v0, v11, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_16:Ljava/lang/String;

    const-string v1, "cHRM"

    const-string v2, "whitePointX"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_16:Ljava/lang/String;

    const-string v1, "cHRM"

    const-string v2, "whitePointY"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_16:Ljava/lang/String;

    const-string v1, "cHRM"

    const-string v2, "redX"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_16:Ljava/lang/String;

    const-string v1, "cHRM"

    const-string v2, "redY"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_16:Ljava/lang/String;

    const-string v1, "cHRM"

    const-string v2, "greenX"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_16:Ljava/lang/String;

    const-string v1, "cHRM"

    const-string v2, "greenY"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_16:Ljava/lang/String;

    const-string v1, "cHRM"

    const-string v2, "blueX"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_16:Ljava/lang/String;

    const-string v1, "cHRM"

    const-string v2, "blueY"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "gAMA"

    invoke-virtual {v10, v0, v11, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_32:Ljava/lang/String;

    const-string v1, "gAMA"

    const-string v2, "value"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "hIST"

    invoke-virtual {v10, v0, v11, v13, v14}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v1, "hISTEntry"

    invoke-virtual {v10, v1, v0, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "hISTEntry"

    const-string v2, "index"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_16:Ljava/lang/String;

    const-string v1, "hISTEntry"

    const-string v2, "value"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v7, "iCCP"

    invoke-virtual {v10, v7, v11, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "iCCP"

    const-string v2, "profileName"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    sget-object v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_compressionMethodNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v1, "iCCP"

    const-string v2, "compressionMethod"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const v15, 0x7fffffff

    invoke-virtual {v10, v7, v0, v12, v15}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addObjectValue(Ljava/lang/String;Ljava/lang/Class;II)V

    const-string v0, "iTXt"

    invoke-virtual {v10, v0, v11, v13, v15}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v6, "iTXtEntry"

    invoke-virtual {v10, v6, v0, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "iTXtEntry"

    const-string v2, "keyword"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    const-string v0, "compressionFlag"

    invoke-virtual {v10, v6, v0, v12, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addBooleanAttribute(Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "iTXtEntry"

    const-string v2, "compressionMethod"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    const-string v1, "iTXtEntry"

    const-string v2, "languageTag"

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    const-string v1, "iTXtEntry"

    const-string v2, "translatedKeyword"

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    const-string v1, "iTXtEntry"

    const-string v2, "text"

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    const-string v0, "pHYS"

    invoke-virtual {v10, v0, v11, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_32:Ljava/lang/String;

    const-string v1, "pHYS"

    const-string v2, "pixelsPerUnitXAxis"

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_32:Ljava/lang/String;

    const-string v1, "pHYS"

    const-string v2, "pixelsPerUnitYAxis"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->unitSpecifierNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v1, "pHYS"

    const-string v2, "unitSpecifier"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    const-string v9, "sBIT"

    const/4 v8, 0x3

    invoke-virtual {v10, v9, v11, v8}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "sBIT_Grayscale"

    invoke-virtual {v10, v0, v9, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "sBIT_Grayscale"

    const-string v2, "gray"

    const/4 v3, 0x2

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v8, v16

    move-object v15, v9

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "sBIT_GrayAlpha"

    invoke-virtual {v10, v0, v15, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "sBIT_GrayAlpha"

    const-string v2, "gray"

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "sBIT_GrayAlpha"

    const-string v2, "alpha"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "sBIT_RGB"

    invoke-virtual {v10, v0, v15, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "sBIT_RGB"

    const-string v2, "red"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "sBIT_RGB"

    const-string v2, "green"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "sBIT_RGB"

    const-string v2, "blue"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "sBIT_RGBAlpha"

    invoke-virtual {v10, v0, v15, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "sBIT_RGBAlpha"

    const-string v2, "red"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "sBIT_RGBAlpha"

    const-string v2, "green"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "sBIT_RGBAlpha"

    const-string v2, "blue"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "sBIT_RGBAlpha"

    const-string v2, "alpha"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "sBIT_Palette"

    invoke-virtual {v10, v0, v15, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "sBIT_Palette"

    const-string v2, "red"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "sBIT_Palette"

    const-string v2, "green"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "sBIT_Palette"

    const-string v2, "blue"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "sPLT"

    invoke-virtual {v10, v0, v11, v13, v14}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v1, "sPLTEntry"

    invoke-virtual {v10, v1, v0, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "sPLTEntry"

    const-string v2, "index"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "sPLTEntry"

    const-string v2, "red"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "sPLTEntry"

    const-string v2, "green"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "sPLTEntry"

    const-string v2, "blue"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "sPLTEntry"

    const-string v2, "alpha"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "sRGB"

    invoke-virtual {v10, v0, v11, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->renderingIntentNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v1, "sRGB"

    const-string v2, "renderingIntent"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    const-string v0, "tEXt"

    const v1, 0x7fffffff

    invoke-virtual {v10, v0, v11, v13, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v1, "tEXtEntry"

    invoke-virtual {v10, v1, v0, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "tEXtEntry"

    const-string v2, "keyword"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    const-string v1, "tEXtEntry"

    const-string v2, "value"

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    const-string v0, "tIME"

    invoke-virtual {v10, v0, v11, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_16:Ljava/lang/String;

    const-string v1, "tIME"

    const-string v2, "year"

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_1:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_12:Ljava/lang/String;

    const-string v1, "tIME"

    const-string v2, "month"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_1:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_31:Ljava/lang/String;

    const-string v1, "tIME"

    const-string v2, "day"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_23:Ljava/lang/String;

    const-string v1, "tIME"

    const-string v2, "hour"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_59:Ljava/lang/String;

    const-string v1, "tIME"

    const-string v2, "minute"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_60:Ljava/lang/String;

    const-string v1, "tIME"

    const-string v2, "second"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v14, "tRNS"

    const/4 v0, 0x3

    invoke-virtual {v10, v14, v11, v0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "tRNS_Grayscale"

    invoke-virtual {v10, v0, v14, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_16:Ljava/lang/String;

    const-string v1, "tRNS_Grayscale"

    const-string v2, "gray"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "tRNS_RGB"

    invoke-virtual {v10, v0, v14, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_16:Ljava/lang/String;

    const-string v1, "tRNS_RGB"

    const-string v2, "red"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_16:Ljava/lang/String;

    const-string v1, "tRNS_RGB"

    const-string v2, "green"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_MAX_16:Ljava/lang/String;

    const-string v1, "tRNS_RGB"

    const-string v2, "blue"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "tRNS_Palette"

    invoke-virtual {v10, v0, v14, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "tRNS_Palette"

    const-string v2, "index"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sget-object v6, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_0:Ljava/lang/String;

    sget-object v7, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->VALUE_255:Ljava/lang/String;

    const-string v1, "tRNS_Palette"

    const-string v2, "alpha"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "zTXt"

    const v1, 0x7fffffff

    invoke-virtual {v10, v0, v11, v13, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v1, "zTXtEntry"

    invoke-virtual {v10, v1, v0, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "zTXtEntry"

    const-string v2, "keyword"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    sget-object v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_compressionMethodNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v1, "zTXtEntry"

    const-string v2, "compressionMethod"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    const-string v1, "zTXtEntry"

    const-string v2, "text"

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    const-string v0, "UnknownChunks"

    const v1, 0x7fffffff

    invoke-virtual {v10, v0, v11, v13, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v6, "UnknownChunk"

    invoke-virtual {v10, v6, v0, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "UnknownChunk"

    const-string v2, "type"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const v1, 0x7fffffff

    invoke-virtual {v10, v6, v0, v12, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addObjectValue(Ljava/lang/String;Ljava/lang/Class;II)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
    .locals 2

    const-class v0, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->instance:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;

    invoke-direct {v1}, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;-><init>()V

    sput-object v1, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->instance:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;

    :cond_0
    sget-object v1, Lcom/sun/imageio/plugins/png/PNGMetadataFormat;->instance:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
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
