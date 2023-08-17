.class public Lcom/sun/imageio/plugins/jpeg/JPEGStreamMetadataFormat;
.super Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormat;
.source "SourceFile"


# static fields
.field private static theInstance:Lcom/sun/imageio/plugins/jpeg/JPEGStreamMetadataFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "javax_imageio_jpeg_stream_1.0"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormat;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getRootName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormat;->addStreamElements(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
    .locals 2

    const-class v0, Lcom/sun/imageio/plugins/jpeg/JPEGStreamMetadataFormat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sun/imageio/plugins/jpeg/JPEGStreamMetadataFormat;->theInstance:Lcom/sun/imageio/plugins/jpeg/JPEGStreamMetadataFormat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sun/imageio/plugins/jpeg/JPEGStreamMetadataFormat;

    invoke-direct {v1}, Lcom/sun/imageio/plugins/jpeg/JPEGStreamMetadataFormat;-><init>()V

    sput-object v1, Lcom/sun/imageio/plugins/jpeg/JPEGStreamMetadataFormat;->theInstance:Lcom/sun/imageio/plugins/jpeg/JPEGStreamMetadataFormat;

    :cond_0
    sget-object v1, Lcom/sun/imageio/plugins/jpeg/JPEGStreamMetadataFormat;->theInstance:Lcom/sun/imageio/plugins/jpeg/JPEGStreamMetadataFormat;
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
.method public bridge synthetic canNodeAppear(Ljava/lang/String;Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sun/imageio/plugins/jpeg/JPEGMetadataFormat;->canNodeAppear(Ljava/lang/String;Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z

    move-result p1

    return p1
.end method
