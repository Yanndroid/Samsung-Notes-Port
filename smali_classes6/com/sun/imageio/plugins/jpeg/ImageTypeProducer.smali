.class Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final defaultTypes:[Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;


# instance fields
.field private csCode:I

.field public failed:Z

.field private type:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;

    sput-object v0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->defaultTypes:[Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->type:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->failed:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->csCode:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->type:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->failed:Z

    iput p1, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->csCode:I

    return-void
.end method

.method public static declared-synchronized getTypeProducer(I)Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;
    .locals 3

    const-class v0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;

    monitor-enter v0

    if-ltz p0, :cond_2

    const/16 v1, 0xc

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->defaultTypes:[Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;

    aget-object v2, v1, p0

    if-nez v2, :cond_1

    new-instance v2, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;

    invoke-direct {v2, p0}, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;-><init>(I)V

    aput-object v2, v1, p0

    :cond_1
    aget-object p0, v1, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized getType()Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->failed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->type:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->produce()Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->type:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->failed:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->type:Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public produce()Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    .locals 8

    iget v0, p0, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;->csCode:I

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_5

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eq v0, v5, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_0

    return-object v6

    :cond_0
    invoke-static {}, Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;->getYCC()Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;->getYCC()Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v0

    sget-object v1, Lcom/sun/imageio/plugins/jpeg/JPEG;->bandOffsets:[[I

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-static {v0, v1, v4, v2, v4}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createInterleaved(Lorg/apache/poi/java/awt/color/ColorSpace;[IIZZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v6

    :cond_2
    sget-object v1, Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;->sRGB:Lorg/apache/poi/java/awt/color/ColorSpace;

    const/high16 v2, -0x1000000

    const/high16 v3, 0xff0000

    const v4, 0xff00

    const/16 v5, 0xff

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createPacked(Lorg/apache/poi/java/awt/color/ColorSpace;IIIIIZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {}, Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;->getYCC()Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;->getYCC()Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v0

    sget-object v1, Lcom/sun/imageio/plugins/jpeg/JPEG;->bandOffsets:[[I

    aget-object v1, v1, v3

    invoke-static {v0, v1, v4, v4, v4}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createInterleaved(Lorg/apache/poi/java/awt/color/ColorSpace;[IIZZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v6

    :cond_5
    sget-object v0, Lcom/sun/imageio/plugins/jpeg/JPEG$JCS;->sRGB:Lorg/apache/poi/java/awt/color/ColorSpace;

    sget-object v1, Lcom/sun/imageio/plugins/jpeg/JPEG;->bOffsRGB:[I

    invoke-static {v0, v1, v4, v4, v4}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createInterleaved(Lorg/apache/poi/java/awt/color/ColorSpace;[IIZZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-static {v1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createFromBufferedImageType(I)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0
.end method
