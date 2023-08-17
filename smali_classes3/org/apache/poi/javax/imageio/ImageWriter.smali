.class public abstract Lorg/apache/poi/javax/imageio/ImageWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/imageio/ImageTranscoder;


# instance fields
.field private abortFlag:Z

.field public availableLocales:[Ljava/util/Locale;

.field public locale:Ljava/util/Locale;

.field public originatingProvider:Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

.field public output:Ljava/lang/Object;

.field public progressListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/javax/imageio/event/IIOWriteProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field public warningListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/javax/imageio/event/IIOWriteWarningListener;",
            ">;"
        }
    .end annotation
.end field

.field public warningLocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->output:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->availableLocales:[Ljava/util/Locale;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->warningLocales:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->abortFlag:Z

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->originatingProvider:Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    return-void
.end method

.method private unsupported()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getOutput() == null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported write variant!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized abort()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->abortFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized abortRequested()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->abortFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addIIOWriteProgressListener(Lorg/apache/poi/javax/imageio/event/IIOWriteProgressListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    return-void
.end method

.method public addIIOWriteWarningListener(Lorg/apache/poi/javax/imageio/event/IIOWriteWarningListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    iget-object p1, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->warningLocales:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/poi/javax/imageio/ImageReader;->addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->warningLocales:Ljava/util/List;

    return-void
.end method

.method public canInsertEmpty(I)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "getOutput() == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public canInsertImage(I)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "getOutput() == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public canRemoveImage(I)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "getOutput() == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public canReplaceImageMetadata(I)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "getOutput() == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public canReplacePixels(I)Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "getOutput() == null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public canReplaceStreamMetadata()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getOutput() == null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canWriteEmpty()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getOutput() == null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canWriteRasters()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canWriteSequence()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized clearAbortRequest()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->abortFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract convertImageMetadata(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
.end method

.method public abstract convertStreamMetadata(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public endInsertEmpty()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->unsupported()V

    return-void
.end method

.method public endReplacePixels()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->unsupported()V

    return-void
.end method

.method public endWriteEmpty()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getOutput() == null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No call to prepareWriteEmpty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endWriteSequence()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->unsupported()V

    return-void
.end method

.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->availableLocales:[Ljava/util/Locale;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Locale;

    :goto_0
    return-object v0
.end method

.method public abstract getDefaultImageMetadata(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
.end method

.method public abstract getDefaultStreamMetadata(Lorg/apache/poi/javax/imageio/ImageWriteParam;)Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;
.end method

.method public getDefaultWriteParam()Lorg/apache/poi/javax/imageio/ImageWriteParam;
    .locals 2

    new-instance v0, Lorg/apache/poi/javax/imageio/ImageWriteParam;

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/poi/javax/imageio/ImageWriteParam;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getNumThumbnailsSupported(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Lorg/apache/poi/javax/imageio/ImageWriteParam;Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getOriginatingProvider()Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->originatingProvider:Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    return-object v0
.end method

.method public getOutput()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->output:Ljava/lang/Object;

    return-object v0
.end method

.method public getPreferredThumbnailSizes(Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;Lorg/apache/poi/javax/imageio/ImageWriteParam;Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)[Lorg/apache/poi/java/awt/Dimension;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public prepareInsertEmpty(ILorg/apache/poi/javax/imageio/ImageTypeSpecifier;IILorg/apache/poi/javax/imageio/metadata/IIOMetadata;Ljava/util/List;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;",
            "II",
            "Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/java/awt/image/BufferedImage;",
            ">;",
            "Lorg/apache/poi/javax/imageio/ImageWriteParam;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->unsupported()V

    return-void
.end method

.method public prepareReplacePixels(ILorg/apache/poi/java/awt/Rectangle;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->unsupported()V

    return-void
.end method

.method public prepareWriteEmpty(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;IILorg/apache/poi/javax/imageio/metadata/IIOMetadata;Ljava/util/List;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;",
            "Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;",
            "II",
            "Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/java/awt/image/BufferedImage;",
            ">;",
            "Lorg/apache/poi/javax/imageio/ImageWriteParam;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->unsupported()V

    return-void
.end method

.method public prepareWriteSequence(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->unsupported()V

    return-void
.end method

.method public processImageComplete()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOWriteProgressListener;

    invoke-interface {v2, p0}, Lorg/apache/poi/javax/imageio/event/IIOWriteProgressListener;->imageComplete(Lorg/apache/poi/javax/imageio/ImageWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processImageProgress(F)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOWriteProgressListener;

    invoke-interface {v2, p0, p1}, Lorg/apache/poi/javax/imageio/event/IIOWriteProgressListener;->imageProgress(Lorg/apache/poi/javax/imageio/ImageWriter;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processImageStarted(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOWriteProgressListener;

    invoke-interface {v2, p0, p1}, Lorg/apache/poi/javax/imageio/event/IIOWriteProgressListener;->imageStarted(Lorg/apache/poi/javax/imageio/ImageWriter;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processThumbnailComplete()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOWriteProgressListener;

    invoke-interface {v2, p0}, Lorg/apache/poi/javax/imageio/event/IIOWriteProgressListener;->thumbnailComplete(Lorg/apache/poi/javax/imageio/ImageWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processThumbnailProgress(F)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOWriteProgressListener;

    invoke-interface {v2, p0, p1}, Lorg/apache/poi/javax/imageio/event/IIOWriteProgressListener;->thumbnailProgress(Lorg/apache/poi/javax/imageio/ImageWriter;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processThumbnailStarted(II)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOWriteProgressListener;

    invoke-interface {v2, p0, p1, p2}, Lorg/apache/poi/javax/imageio/event/IIOWriteProgressListener;->thumbnailStarted(Lorg/apache/poi/javax/imageio/ImageWriter;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processWarningOccurred(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOWriteWarningListener;

    invoke-interface {v2, p0, p1, p2}, Lorg/apache/poi/javax/imageio/event/IIOWriteWarningListener;->warningOccurred(Lorg/apache/poi/javax/imageio/ImageWriter;ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "warning == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processWarningOccurred(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOWriteWarningListener;

    iget-object v3, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->warningLocales:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    :cond_1
    new-instance v4, Lorg/apache/poi/javax/imageio/ImageWriter$1;

    invoke-direct {v4, p0}, Lorg/apache/poi/javax/imageio/ImageWriter$1;-><init>(Lorg/apache/poi/javax/imageio/ImageWriter;)V

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ClassLoader;

    :try_start_0
    invoke-static {p2, v3, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :try_start_1
    invoke-static {p2, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v3
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    invoke-virtual {v3, p3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-interface {v2, p0, p1, v3}, Lorg/apache/poi/javax/imageio/event/IIOWriteWarningListener;->warningOccurred(Lorg/apache/poi/javax/imageio/ImageWriter;ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Resource is missing!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Resource is not a String!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bundle not found!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "keyword == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "baseName == null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processWriteAborted()V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/javax/imageio/event/IIOWriteProgressListener;

    invoke-interface {v2, p0}, Lorg/apache/poi/javax/imageio/event/IIOWriteProgressListener;->writeAborted(Lorg/apache/poi/javax/imageio/ImageWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeAllIIOWriteProgressListeners()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    return-void
.end method

.method public removeAllIIOWriteWarningListeners()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    iput-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->warningLocales:Ljava/util/List;

    return-void
.end method

.method public removeIIOWriteProgressListener(Lorg/apache/poi/javax/imageio/event/IIOWriteProgressListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lorg/apache/poi/javax/imageio/ImageReader;->removeFromList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    :cond_1
    :goto_0
    return-void
.end method

.method public removeIIOWriteWarningListener(Lorg/apache/poi/javax/imageio/event/IIOWriteWarningListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->warningLocales:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->warningLocales:Ljava/util/List;

    :cond_1
    :goto_0
    return-void
.end method

.method public removeImage(I)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->unsupported()V

    return-void
.end method

.method public replaceImageMetadata(ILorg/apache/poi/javax/imageio/metadata/IIOMetadata;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->unsupported()V

    return-void
.end method

.method public replacePixels(Lorg/apache/poi/java/awt/image/Raster;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->unsupported()V

    return-void
.end method

.method public replacePixels(Lorg/apache/poi/java/awt/image/RenderedImage;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->unsupported()V

    return-void
.end method

.method public replaceStreamMetadata(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->unsupported()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/javax/imageio/ImageWriter;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->removeAllIIOWriteWarningListeners()V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->removeAllIIOWriteProgressListeners()V

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->clearAbortRequest()V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid locale!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->locale:Ljava/util/Locale;

    return-void
.end method

.method public setOutput(Ljava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->getOriginatingProvider()Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/apache/poi/javax/imageio/spi/ImageWriterSpi;->getOutputTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal output type!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageWriter;->output:Ljava/lang/Object;

    return-void
.end method

.method public write(Lorg/apache/poi/java/awt/image/RenderedImage;)V
    .locals 2

    new-instance v0, Lorg/apache/poi/javax/imageio/IIOImage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lorg/apache/poi/javax/imageio/IIOImage;-><init>(Lorg/apache/poi/java/awt/image/RenderedImage;Ljava/util/List;Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;)V

    invoke-virtual {p0, v1, v0, v1}, Lorg/apache/poi/javax/imageio/ImageWriter;->write(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/IIOImage;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V

    return-void
.end method

.method public write(Lorg/apache/poi/javax/imageio/IIOImage;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lorg/apache/poi/javax/imageio/ImageWriter;->write(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/IIOImage;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V

    return-void
.end method

.method public abstract write(Lorg/apache/poi/javax/imageio/metadata/IIOMetadata;Lorg/apache/poi/javax/imageio/IIOImage;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V
.end method

.method public writeInsert(ILorg/apache/poi/javax/imageio/IIOImage;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->unsupported()V

    return-void
.end method

.method public writeToSequence(Lorg/apache/poi/javax/imageio/IIOImage;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/ImageWriter;->unsupported()V

    return-void
.end method
