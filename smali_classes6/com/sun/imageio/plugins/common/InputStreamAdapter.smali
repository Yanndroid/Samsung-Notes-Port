.class public Lcom/sun/imageio/plugins/common/InputStreamAdapter;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lcom/sun/imageio/plugins/common/InputStreamAdapter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    return-void
.end method


# virtual methods
.method public read()I
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/common/InputStreamAdapter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1

    iget-object v0, p0, Lcom/sun/imageio/plugins/common/InputStreamAdapter;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->read([BII)I

    move-result p1

    return p1
.end method
