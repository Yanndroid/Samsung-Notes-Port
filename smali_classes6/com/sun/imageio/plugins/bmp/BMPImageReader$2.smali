.class Lcom/sun/imageio/plugins/bmp/BMPImageReader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/imageio/event/IIOReadUpdateListener;


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

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader$2;->this$0:Lcom/sun/imageio/plugins/bmp/BMPImageReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageUpdate(Lorg/apache/poi/javax/imageio/ImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader$2;->this$0:Lcom/sun/imageio/plugins/bmp/BMPImageReader;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v1 .. v9}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->access$200(Lcom/sun/imageio/plugins/bmp/BMPImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V

    return-void
.end method

.method public passComplete(Lorg/apache/poi/javax/imageio/ImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;)V
    .locals 0

    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader$2;->this$0:Lcom/sun/imageio/plugins/bmp/BMPImageReader;

    invoke-static {p1, p2}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->access$300(Lcom/sun/imageio/plugins/bmp/BMPImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;)V

    return-void
.end method

.method public passStarted(Lorg/apache/poi/javax/imageio/ImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;IIIIIII[I)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader$2;->this$0:Lcom/sun/imageio/plugins/bmp/BMPImageReader;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-static/range {v1 .. v10}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->access$400(Lcom/sun/imageio/plugins/bmp/BMPImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;IIIIIII[I)V

    return-void
.end method

.method public thumbnailPassComplete(Lorg/apache/poi/javax/imageio/ImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;)V
    .locals 0

    return-void
.end method

.method public thumbnailPassStarted(Lorg/apache/poi/javax/imageio/ImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;IIIIIII[I)V
    .locals 0

    return-void
.end method

.method public thumbnailUpdate(Lorg/apache/poi/javax/imageio/ImageReader;Lorg/apache/poi/java/awt/image/BufferedImage;IIIIII[I)V
    .locals 0

    return-void
.end method
