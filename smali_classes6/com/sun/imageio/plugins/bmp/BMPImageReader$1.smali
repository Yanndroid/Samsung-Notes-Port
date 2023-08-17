.class Lcom/sun/imageio/plugins/bmp/BMPImageReader$1;
.super Lcom/sun/imageio/plugins/bmp/BMPImageReader$EmbeddedProgressAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readEmbedded(ILorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/javax/imageio/ImageReadParam;)Lorg/apache/poi/java/awt/image/BufferedImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/sun/imageio/plugins/bmp/BMPImageReader;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/bmp/BMPImageReader;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader$1;->this$0:Lcom/sun/imageio/plugins/bmp/BMPImageReader;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader$EmbeddedProgressAdapter;-><init>(Lcom/sun/imageio/plugins/bmp/BMPImageReader;Lcom/sun/imageio/plugins/bmp/BMPImageReader$1;)V

    return-void
.end method


# virtual methods
.method public imageProgress(Lorg/apache/poi/javax/imageio/ImageReader;F)V
    .locals 0

    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader$1;->this$0:Lcom/sun/imageio/plugins/bmp/BMPImageReader;

    invoke-static {p1, p2}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->access$100(Lcom/sun/imageio/plugins/bmp/BMPImageReader;F)V

    return-void
.end method
