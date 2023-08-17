.class public abstract Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;
.super Lorg/apache/poi/javax/imageio/spi/IIOServiceProvider;
.source "SourceFile"


# instance fields
.field public MIMETypes:[Ljava/lang/String;

.field public extraImageMetadataFormatClassNames:[Ljava/lang/String;

.field public extraImageMetadataFormatNames:[Ljava/lang/String;

.field public extraStreamMetadataFormatClassNames:[Ljava/lang/String;

.field public extraStreamMetadataFormatNames:[Ljava/lang/String;

.field public names:[Ljava/lang/String;

.field public nativeImageMetadataFormatClassName:Ljava/lang/String;

.field public nativeImageMetadataFormatName:Ljava/lang/String;

.field public nativeStreamMetadataFormatClassName:Ljava/lang/String;

.field public nativeStreamMetadataFormatName:Ljava/lang/String;

.field public pluginClassName:Ljava/lang/String;

.field public suffixes:[Ljava/lang/String;

.field public supportsStandardImageMetadataFormat:Z

.field public supportsStandardStreamMetadataFormat:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/spi/IIOServiceProvider;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->names:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->suffixes:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->MIMETypes:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->pluginClassName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->supportsStandardStreamMetadataFormat:Z

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->nativeStreamMetadataFormatName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->nativeStreamMetadataFormatClassName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->extraStreamMetadataFormatNames:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->extraStreamMetadataFormatClassNames:[Ljava/lang/String;

    iput-boolean v1, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->supportsStandardImageMetadataFormat:Z

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->nativeImageMetadataFormatName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->nativeImageMetadataFormatClassName:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->extraImageMetadataFormatNames:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->extraImageMetadataFormatClassNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p15

    move-object/from16 v8, p16

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/javax/imageio/spi/IIOServiceProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    iput-object v9, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->names:[Ljava/lang/String;

    iput-object v9, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->suffixes:[Ljava/lang/String;

    iput-object v9, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->MIMETypes:[Ljava/lang/String;

    iput-object v9, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->pluginClassName:Ljava/lang/String;

    const/4 v10, 0x0

    iput-boolean v10, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->supportsStandardStreamMetadataFormat:Z

    iput-object v9, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->nativeStreamMetadataFormatName:Ljava/lang/String;

    iput-object v9, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->nativeStreamMetadataFormatClassName:Ljava/lang/String;

    iput-object v9, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->extraStreamMetadataFormatNames:[Ljava/lang/String;

    iput-object v9, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->extraStreamMetadataFormatClassNames:[Ljava/lang/String;

    iput-boolean v10, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->supportsStandardImageMetadataFormat:Z

    iput-object v9, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->nativeImageMetadataFormatName:Ljava/lang/String;

    iput-object v9, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->nativeImageMetadataFormatClassName:Ljava/lang/String;

    iput-object v9, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->extraImageMetadataFormatNames:[Ljava/lang/String;

    iput-object v9, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->extraImageMetadataFormatClassNames:[Ljava/lang/String;

    if-eqz v1, :cond_8

    array-length v9, v1

    if-eqz v9, :cond_7

    if-eqz v4, :cond_6

    invoke-virtual {p3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->names:[Ljava/lang/String;

    if-eqz v2, :cond_0

    array-length v1, v2

    if-lez v1, :cond_0

    invoke-virtual {p4}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->suffixes:[Ljava/lang/String;

    :cond_0
    if-eqz v3, :cond_1

    array-length v1, v3

    if-lez v1, :cond_1

    invoke-virtual/range {p5 .. p5}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->MIMETypes:[Ljava/lang/String;

    :cond_1
    iput-object v4, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->pluginClassName:Ljava/lang/String;

    move/from16 v1, p7

    iput-boolean v1, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->supportsStandardStreamMetadataFormat:Z

    move-object/from16 v1, p8

    iput-object v1, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->nativeStreamMetadataFormatName:Ljava/lang/String;

    move-object/from16 v1, p9

    iput-object v1, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->nativeStreamMetadataFormatClassName:Ljava/lang/String;

    if-eqz v5, :cond_2

    array-length v1, v5

    if-lez v1, :cond_2

    invoke-virtual/range {p10 .. p10}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->extraStreamMetadataFormatNames:[Ljava/lang/String;

    :cond_2
    if-eqz v6, :cond_3

    array-length v1, v6

    if-lez v1, :cond_3

    invoke-virtual/range {p11 .. p11}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->extraStreamMetadataFormatClassNames:[Ljava/lang/String;

    :cond_3
    move/from16 v1, p12

    iput-boolean v1, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->supportsStandardImageMetadataFormat:Z

    move-object/from16 v1, p13

    iput-object v1, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->nativeImageMetadataFormatName:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->nativeImageMetadataFormatClassName:Ljava/lang/String;

    if-eqz v7, :cond_4

    array-length v1, v7

    if-lez v1, :cond_4

    invoke-virtual/range {p15 .. p15}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->extraImageMetadataFormatNames:[Ljava/lang/String;

    :cond_4
    if-eqz v8, :cond_5

    array-length v1, v8

    if-lez v1, :cond_5

    invoke-virtual/range {p16 .. p16}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->extraImageMetadataFormatClassNames:[Ljava/lang/String;

    :cond_5
    return-void

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "pluginClassName == null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "names.length == 0!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "names == null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getMetadataFormat(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
    .locals 1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_0

    const-string p2, "javax_imageio_1.0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormatImpl;->getStandardFormatInstance()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p5, :cond_3

    move p2, v0

    :goto_0
    array-length p4, p5

    if-ge p2, p4, :cond_3

    aget-object p4, p5, p2

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    aget-object p4, p6, p2

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    move-object p4, p3

    :goto_1
    if-eqz p4, :cond_4

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p4, p2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const-string p2, "getInstance"

    new-array p4, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Can\'t obtain format"

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported format name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "formatName == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getExtraImageMetadataFormatNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->extraImageMetadataFormatNames:[Ljava/lang/String;

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

.method public getExtraStreamMetadataFormatNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->extraStreamMetadataFormatNames:[Ljava/lang/String;

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

.method public getFileSuffixes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->suffixes:[Ljava/lang/String;

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

.method public getFormatNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->names:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getImageMetadataFormat(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
    .locals 7

    iget-boolean v2, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->supportsStandardImageMetadataFormat:Z

    iget-object v3, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->nativeImageMetadataFormatName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->nativeImageMetadataFormatClassName:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->extraImageMetadataFormatNames:[Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->extraImageMetadataFormatClassNames:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->getMetadataFormat(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;

    move-result-object p1

    return-object p1
.end method

.method public getMIMETypes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->MIMETypes:[Ljava/lang/String;

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

.method public getNativeImageMetadataFormatName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->nativeImageMetadataFormatName:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeStreamMetadataFormatName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->nativeStreamMetadataFormatName:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->pluginClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamMetadataFormat(Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;
    .locals 7

    iget-boolean v2, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->supportsStandardStreamMetadataFormat:Z

    iget-object v3, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->nativeStreamMetadataFormatName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->nativeStreamMetadataFormatClassName:Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->extraStreamMetadataFormatNames:[Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->extraStreamMetadataFormatClassNames:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->getMetadataFormat(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadataFormat;

    move-result-object p1

    return-object p1
.end method

.method public isStandardImageMetadataFormatSupported()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->supportsStandardImageMetadataFormat:Z

    return v0
.end method

.method public isStandardStreamMetadataFormatSupported()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->supportsStandardStreamMetadataFormat:Z

    return v0
.end method
