.class Lcom/sun/imageio/plugins/bmp/BMPImageReader$EmbeddedProgressAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/bmp/BMPImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmbeddedProgressAdapter"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/sun/imageio/plugins/bmp/BMPImageReader;


# direct methods
.method private constructor <init>(Lcom/sun/imageio/plugins/bmp/BMPImageReader;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader$EmbeddedProgressAdapter;->this$0:Lcom/sun/imageio/plugins/bmp/BMPImageReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/imageio/plugins/bmp/BMPImageReader;Lcom/sun/imageio/plugins/bmp/BMPImageReader$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader$EmbeddedProgressAdapter;-><init>(Lcom/sun/imageio/plugins/bmp/BMPImageReader;)V

    return-void
.end method


# virtual methods
.method public imageComplete(Lorg/apache/poi/javax/imageio/ImageReader;)V
    .locals 0

    return-void
.end method

.method public imageProgress(Lorg/apache/poi/javax/imageio/ImageReader;F)V
    .locals 0

    return-void
.end method

.method public imageStarted(Lorg/apache/poi/javax/imageio/ImageReader;I)V
    .locals 0

    return-void
.end method

.method public readAborted(Lorg/apache/poi/javax/imageio/ImageReader;)V
    .locals 0

    return-void
.end method

.method public sequenceComplete(Lorg/apache/poi/javax/imageio/ImageReader;)V
    .locals 0

    return-void
.end method

.method public sequenceStarted(Lorg/apache/poi/javax/imageio/ImageReader;I)V
    .locals 0

    return-void
.end method

.method public thumbnailComplete(Lorg/apache/poi/javax/imageio/ImageReader;)V
    .locals 0

    return-void
.end method

.method public thumbnailProgress(Lorg/apache/poi/javax/imageio/ImageReader;F)V
    .locals 0

    return-void
.end method

.method public thumbnailStarted(Lorg/apache/poi/javax/imageio/ImageReader;II)V
    .locals 0

    return-void
.end method
