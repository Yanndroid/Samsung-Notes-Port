.class Lcom/sun/imageio/plugins/bmp/BMPImageWriter$1;
.super Lcom/sun/imageio/plugins/bmp/BMPImageWriter$IIOWriteProgressAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->writeEmbedded(Lorg/apache/poi/javax/imageio/IIOImage;Lorg/apache/poi/javax/imageio/ImageWriteParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/sun/imageio/plugins/bmp/BMPImageWriter;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/bmp/BMPImageWriter;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter$1;->this$0:Lcom/sun/imageio/plugins/bmp/BMPImageWriter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter$IIOWriteProgressAdapter;-><init>(Lcom/sun/imageio/plugins/bmp/BMPImageWriter;Lcom/sun/imageio/plugins/bmp/BMPImageWriter$1;)V

    return-void
.end method


# virtual methods
.method public imageProgress(Lorg/apache/poi/javax/imageio/ImageWriter;F)V
    .locals 0

    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter$1;->this$0:Lcom/sun/imageio/plugins/bmp/BMPImageWriter;

    invoke-static {p1, p2}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->access$100(Lcom/sun/imageio/plugins/bmp/BMPImageWriter;F)V

    return-void
.end method
