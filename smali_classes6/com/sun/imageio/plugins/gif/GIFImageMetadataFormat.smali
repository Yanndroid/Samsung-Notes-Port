.class public Lcom/sun/imageio/plugins/gif/GIFImageMetadataFormat;
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
    .locals 14

    const-string v10, "javax_imageio_gif_image_1.0"

    const/4 v11, 0x2

    invoke-direct {p0, v10, v11}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;-><init>(Ljava/lang/String;I)V

    const-string v12, "ImageDescriptor"

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v10, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "ImageDescriptor"

    const-string v2, "imageLeftPosition"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "0"

    const-string v7, "65535"

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "ImageDescriptor"

    const-string v2, "imageTopPosition"

    const-string v6, "0"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "ImageDescriptor"

    const-string v2, "imageWidth"

    const-string v6, "1"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "ImageDescriptor"

    const-string v2, "imageHeight"

    const-string v6, "1"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "interlaceFlag"

    invoke-virtual {p0, v12, v0, v13, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addBooleanAttribute(Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v7, "LocalColorTable"

    const/16 v0, 0x100

    invoke-virtual {p0, v7, v10, v11, v0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    sget-object v0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->colorTableSizes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v1, "LocalColorTable"

    const-string v2, "sizeOfLocalColorTable"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    const-string v0, "sortFlag"

    invoke-virtual {p0, v7, v0, v13, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addBooleanAttribute(Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "ColorTableEntry"

    invoke-virtual {p0, v0, v7, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "ColorTableEntry"

    const-string v2, "index"

    const-string v6, "0"

    const-string v7, "255"

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "ColorTableEntry"

    const-string v2, "red"

    const-string v6, "0"

    const-string v7, "255"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "ColorTableEntry"

    const-string v2, "green"

    const-string v6, "0"

    const-string v7, "255"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "ColorTableEntry"

    const-string v2, "blue"

    const-string v6, "0"

    const-string v7, "255"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v7, "GraphicControlExtension"

    invoke-virtual {p0, v7, v10, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->disposalMethodNames:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v1, "GraphicControlExtension"

    const-string v2, "disposalMethod"

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    const-string v0, "userInputFlag"

    invoke-virtual {p0, v7, v0, v13, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addBooleanAttribute(Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "transparentColorFlag"

    invoke-virtual {p0, v7, v0, v13, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addBooleanAttribute(Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "GraphicControlExtension"

    const-string v2, "delayTime"

    const/4 v3, 0x2

    const-string v6, "0"

    const-string v7, "65535"

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "GraphicControlExtension"

    const-string v2, "transparentColorIndex"

    const-string v6, "0"

    const-string v7, "255"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "PlainTextExtension"

    invoke-virtual {p0, v0, v10, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "PlainTextExtension"

    const-string v2, "textGridLeft"

    const-string v6, "0"

    const-string v7, "65535"

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "PlainTextExtension"

    const-string v2, "textGridTop"

    const-string v6, "0"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "PlainTextExtension"

    const-string v2, "textGridWidth"

    const-string v6, "1"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "PlainTextExtension"

    const-string v2, "textGridHeight"

    const-string v6, "1"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "PlainTextExtension"

    const-string v2, "characterCellWidth"

    const-string v6, "1"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "PlainTextExtension"

    const-string v2, "characterCellHeight"

    const-string v6, "1"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "PlainTextExtension"

    const-string v2, "textForegroundColor"

    const-string v6, "0"

    const-string v7, "255"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "PlainTextExtension"

    const-string v2, "textBackgroundColor"

    const-string v6, "0"

    const-string v7, "255"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "ApplicationExtensions"

    const/4 v6, 0x1

    const v7, 0x7fffffff

    invoke-virtual {p0, v0, v10, v6, v7}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v8, "ApplicationExtension"

    invoke-virtual {p0, v8, v0, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "ApplicationExtension"

    const-string v2, "applicationID"

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    const-string v1, "ApplicationExtension"

    const-string v2, "authenticationCode"

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v8, v0, v13, v7}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addObjectValue(Ljava/lang/String;Ljava/lang/Class;II)V

    const-string v0, "CommentExtensions"

    invoke-virtual {p0, v0, v10, v6, v7}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    const-string v1, "CommentExtension"

    invoke-virtual {p0, v1, v0, v13}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "CommentExtension"

    const-string v2, "value"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
    .locals 2

    const-class v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadataFormat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sun/imageio/plugins/gif/GIFImageMetadataFormat;->instance:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sun/imageio/plugins/gif/GIFImageMetadataFormat;

    invoke-direct {v1}, Lcom/sun/imageio/plugins/gif/GIFImageMetadataFormat;-><init>()V

    sput-object v1, Lcom/sun/imageio/plugins/gif/GIFImageMetadataFormat;->instance:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;

    :cond_0
    sget-object v1, Lcom/sun/imageio/plugins/gif/GIFImageMetadataFormat;->instance:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
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
