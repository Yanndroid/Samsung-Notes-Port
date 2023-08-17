.class public abstract Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;
.super Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;
.source "SourceFile"


# static fields
.field public static final STANDARD_OUTPUT_TYPE:[Ljava/lang/Class;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public outputTypes:[Ljava/lang/Class;

.field public readerSpiNames:[Ljava/lang/String;

.field private writerClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->STANDARD_OUTPUT_TYPE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->outputTypes:[Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->readerSpiNames:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->writerClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v14, p7

    move-object/from16 v13, p8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move/from16 v12, p14

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    move-object/from16 v15, p17

    move-object/from16 v16, p18

    invoke-direct/range {v0 .. v16}, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->outputTypes:[Ljava/lang/Class;

    iput-object v0, v1, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->readerSpiNames:[Ljava/lang/String;

    iput-object v0, v1, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->writerClass:Ljava/lang/Class;

    move-object/from16 v0, p7

    if-eqz v0, :cond_3

    array-length v2, v0

    if-eqz v2, :cond_2

    sget-object v2, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->STANDARD_OUTPUT_TYPE:[Ljava/lang/Class;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;

    aput-object v3, v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p7 .. p7}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    :goto_0
    iput-object v0, v1, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->outputTypes:[Ljava/lang/Class;

    move-object/from16 v0, p8

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    invoke-virtual/range {p8 .. p8}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v1, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->readerSpiNames:[Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "outputTypes.length == 0!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "outputTypes == null!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public canEncodeImage(Lorg/apache/poi/java/awt/image/RenderedImage;)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createFromRenderedImage(Lorg/apache/poi/java/awt/image/RenderedImage;)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->canEncodeImage(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z

    move-result p1

    return p1
.end method

.method public abstract canEncodeImage(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;)Z
.end method

.method public createWriterInstance()Lorg/apache/poi/javax/imageio/ImageWriter;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->createWriterInstance(Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/ImageWriter;

    move-result-object v0

    return-object v0
.end method

.method public abstract createWriterInstance(Ljava/lang/Object;)Lorg/apache/poi/javax/imageio/ImageWriter;
.end method

.method public getImageReaderSpiNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->readerSpiNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getOutputTypes()[Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->outputTypes:[Ljava/lang/Class;

    invoke-virtual {v0}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    return-object v0
.end method

.method public isFormatLossless()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isOwnWriter(Lorg/apache/poi/javax/imageio/ImageWriter;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->pluginClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "writer == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
