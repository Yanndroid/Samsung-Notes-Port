.class Lcom/sun/imageio/plugins/png/PNGImageWriteParam;
.super Lorg/apache/poi/javax/imageio/ImageWriteParam;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/poi/javax/imageio/ImageWriteParam;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->canWriteProgressive:Z

    iput-object p1, p0, Lorg/apache/poi/javax/imageio/ImageWriteParam;->locale:Ljava/util/Locale;

    return-void
.end method
