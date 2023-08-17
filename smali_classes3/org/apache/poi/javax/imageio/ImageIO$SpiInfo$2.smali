.class final enum Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo$2;
.super Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/poi/javax/imageio/ImageIO$SpiInfo;-><init>(Ljava/lang/String;ILorg/apache/poi/javax/imageio/ImageIO$1;)V

    return-void
.end method


# virtual methods
.method public info(Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;)[Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lorg/apache/poi/javax/imageio/spi/ImageReaderWriterSpi;->getMIMETypes()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
