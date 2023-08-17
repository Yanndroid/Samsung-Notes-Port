.class Lcom/sun/imageio/plugins/bmp/BMPImageReader$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/imageio/event/IIOReadWarningListener;


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
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader$3;->this$0:Lcom/sun/imageio/plugins/bmp/BMPImageReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public warningOccurred(Lorg/apache/poi/javax/imageio/ImageReader;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader$3;->this$0:Lcom/sun/imageio/plugins/bmp/BMPImageReader;

    invoke-static {p1, p2}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->access$500(Lcom/sun/imageio/plugins/bmp/BMPImageReader;Ljava/lang/String;)V

    return-void
.end method
