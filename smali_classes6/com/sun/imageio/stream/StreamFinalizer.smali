.class public Lcom/sun/imageio/stream/StreamFinalizer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/stream/StreamFinalizer;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sun/imageio/stream/StreamFinalizer;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/sun/imageio/stream/StreamFinalizer;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1

    :catch_0
    :goto_0
    iput-object v0, p0, Lcom/sun/imageio/stream/StreamFinalizer;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
