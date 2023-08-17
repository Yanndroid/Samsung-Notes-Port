.class public Lcom/sun/imageio/plugins/gif/GIFStreamMetadataFormat;
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

    const-string v10, "javax_imageio_gif_stream_1.0"

    const/4 v11, 0x2

    invoke-direct {p0, v10, v11}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;-><init>(Ljava/lang/String;I)V

    const-string v0, "Version"

    const/4 v12, 0x0

    invoke-virtual {p0, v0, v10, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->versionStrings:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v1, "Version"

    const-string v2, "value"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    const-string v0, "LogicalScreenDescriptor"

    invoke-virtual {p0, v0, v10, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "LogicalScreenDescriptor"

    const-string v2, "logicalScreenWidth"

    const/4 v3, 0x2

    const-string v6, "1"

    const-string v7, "65535"

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "LogicalScreenDescriptor"

    const-string v2, "logicalScreenHeight"

    const-string v6, "1"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "LogicalScreenDescriptor"

    const-string v2, "colorResolution"

    const-string v6, "1"

    const-string v7, "8"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "LogicalScreenDescriptor"

    const-string v2, "pixelAspectRatio"

    const-string v6, "0"

    const-string v7, "255"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v13, "GlobalColorTable"

    const/16 v0, 0x100

    invoke-virtual {p0, v13, v10, v11, v0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;II)V

    sget-object v0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->colorTableSizes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v1, "GlobalColorTable"

    const-string v2, "sizeOfGlobalColorTable"

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/util/List;)V

    const-string v1, "GlobalColorTable"

    const-string v2, "backgroundColorIndex"

    const-string v6, "0"

    const-string v7, "255"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "sortFlag"

    invoke-virtual {p0, v13, v0, v12, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addBooleanAttribute(Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v0, "ColorTableEntry"

    invoke-virtual {p0, v0, v13, v12}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

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

    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
    .locals 2

    const-class v0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadataFormat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sun/imageio/plugins/gif/GIFStreamMetadataFormat;->instance:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sun/imageio/plugins/gif/GIFStreamMetadataFormat;

    invoke-direct {v1}, Lcom/sun/imageio/plugins/gif/GIFStreamMetadataFormat;-><init>()V

    sput-object v1, Lcom/sun/imageio/plugins/gif/GIFStreamMetadataFormat;->instance:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;

    :cond_0
    sget-object v1, Lcom/sun/imageio/plugins/gif/GIFStreamMetadataFormat;->instance:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
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
