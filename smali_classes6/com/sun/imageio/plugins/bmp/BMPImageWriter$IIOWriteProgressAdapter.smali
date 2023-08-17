.class Lcom/sun/imageio/plugins/bmp/BMPImageWriter$IIOWriteProgressAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/imageio/event/IIOWriteProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/bmp/BMPImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IIOWriteProgressAdapter"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/sun/imageio/plugins/bmp/BMPImageWriter;


# direct methods
.method private constructor <init>(Lcom/sun/imageio/plugins/bmp/BMPImageWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter$IIOWriteProgressAdapter;->this$0:Lcom/sun/imageio/plugins/bmp/BMPImageWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sun/imageio/plugins/bmp/BMPImageWriter;Lcom/sun/imageio/plugins/bmp/BMPImageWriter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter$IIOWriteProgressAdapter;-><init>(Lcom/sun/imageio/plugins/bmp/BMPImageWriter;)V

    return-void
.end method


# virtual methods
.method public imageComplete(Lorg/apache/poi/javax/imageio/ImageWriter;)V
    .locals 0

    return-void
.end method

.method public imageProgress(Lorg/apache/poi/javax/imageio/ImageWriter;F)V
    .locals 0

    return-void
.end method

.method public imageStarted(Lorg/apache/poi/javax/imageio/ImageWriter;I)V
    .locals 0

    return-void
.end method

.method public thumbnailComplete(Lorg/apache/poi/javax/imageio/ImageWriter;)V
    .locals 0

    return-void
.end method

.method public thumbnailProgress(Lorg/apache/poi/javax/imageio/ImageWriter;F)V
    .locals 0

    return-void
.end method

.method public thumbnailStarted(Lorg/apache/poi/javax/imageio/ImageWriter;II)V
    .locals 0

    return-void
.end method

.method public writeAborted(Lorg/apache/poi/javax/imageio/ImageWriter;)V
    .locals 0

    return-void
.end method
