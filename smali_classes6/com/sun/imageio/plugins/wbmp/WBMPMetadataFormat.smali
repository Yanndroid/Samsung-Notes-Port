.class public Lcom/sun/imageio/plugins/wbmp/WBMPMetadataFormat;
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
    .locals 10

    const-string v0, "javax_imageio_wbmp_1.0"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;-><init>(Ljava/lang/String;I)V

    const-string v1, "ImageDescriptor"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addElement(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "ImageDescriptor"

    const-string v2, "WBMPType"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "0"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V

    const-string v1, "ImageDescriptor"

    const-string v2, "Width"

    const/4 v5, 0x0

    const-string v6, "0"

    const-string v7, "65535"

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "ImageDescriptor"

    const-string v2, "Height"

    const-string v6, "1"

    const-string v7, "65535"

    invoke-virtual/range {v0 .. v9}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
    .locals 2

    const-class v0, Lcom/sun/imageio/plugins/wbmp/WBMPMetadataFormat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sun/imageio/plugins/wbmp/WBMPMetadataFormat;->instance:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sun/imageio/plugins/wbmp/WBMPMetadataFormat;

    invoke-direct {v1}, Lcom/sun/imageio/plugins/wbmp/WBMPMetadataFormat;-><init>()V

    sput-object v1, Lcom/sun/imageio/plugins/wbmp/WBMPMetadataFormat;->instance:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;

    :cond_0
    sget-object v1, Lcom/sun/imageio/plugins/wbmp/WBMPMetadataFormat;->instance:Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
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
