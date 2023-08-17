.class Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream$StreamDisposerRecord;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/java2d/DisposerRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamDisposerRecord"
.end annotation


# instance fields
.field private cache:Ljava/io/RandomAccessFile;

.field private cacheFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/RandomAccessFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream$StreamDisposerRecord;->cacheFile:Ljava/io/File;

    iput-object p2, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream$StreamDisposerRecord;->cache:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream$StreamDisposerRecord;->cache:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iput-object v1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream$StreamDisposerRecord;->cache:Ljava/io/RandomAccessFile;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream$StreamDisposerRecord;->cache:Ljava/io/RandomAccessFile;

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream$StreamDisposerRecord;->cacheFile:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iput-object v1, p0, Lorg/apache/poi/javax/imageio/stream/FileCacheImageInputStream$StreamDisposerRecord;->cacheFile:Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
