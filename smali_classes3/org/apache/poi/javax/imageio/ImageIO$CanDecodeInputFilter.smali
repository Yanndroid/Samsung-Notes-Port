.class Lorg/apache/poi/javax/imageio/ImageIO$CanDecodeInputFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/imageio/spi/ServiceRegistry$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/javax/imageio/ImageIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CanDecodeInputFilter"
.end annotation


# instance fields
.field public input:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageIO$CanDecodeInputFilter;->input:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/Object;)Z
    .locals 3

    :try_start_0
    check-cast p1, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/poi/javax/imageio/ImageIO$CanDecodeInputFilter;->input:Ljava/lang/Object;

    instance-of v2, v1, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->mark()V

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/javax/imageio/ImageIO$CanDecodeInputFilter;->input:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lorg/apache/poi/javax/imageio/spi/ImageReaderSpi;->canDecodeInput(Ljava/lang/Object;)Z

    move-result p1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/poi/javax/imageio/stream/ImageInputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
