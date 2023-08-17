.class Lcom/sun/imageio/plugins/png/PNGImageDataEnumeration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public firstTime:Z

.field public length:I

.field public stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;


# direct methods
.method public constructor <init>(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGImageDataEnumeration;->firstTime:Z

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageDataEnumeration;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageDataEnumeration;->length:I

    invoke-interface {p1}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 4

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGImageDataEnumeration;->firstTime:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageDataEnumeration;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageDataEnumeration;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lcom/sun/imageio/plugins/png/PNGImageDataEnumeration;->length:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageDataEnumeration;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->readInt()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const v3, 0x49444154    # 803861.25f

    if-ne v2, v3, :cond_1

    return v1

    :catch_0
    :cond_1
    return v0
.end method

.method public nextElement()Ljava/io/InputStream;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sun/imageio/plugins/png/PNGImageDataEnumeration;->firstTime:Z

    new-instance v0, Lcom/sun/imageio/plugins/common/SubImageInputStream;

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageDataEnumeration;->stream:Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    iget v2, p0, Lcom/sun/imageio/plugins/png/PNGImageDataEnumeration;->length:I

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/common/SubImageInputStream;-><init>(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;I)V

    new-instance v1, Lcom/sun/imageio/plugins/common/InputStreamAdapter;

    invoke-direct {v1, v0}, Lcom/sun/imageio/plugins/common/InputStreamAdapter;-><init>(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/png/PNGImageDataEnumeration;->nextElement()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
