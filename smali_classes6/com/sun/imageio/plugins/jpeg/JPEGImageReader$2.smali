.class Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$2;
.super Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->getImageTypesOnThread(I)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$2;->this$0:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/ImageTypeProducer;-><init>()V

    return-void
.end method


# virtual methods
.method public produce()Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;
    .locals 3

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$2;->this$0:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;

    invoke-static {v0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->access$200(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)Lorg/apache/poi/java/awt/color/ColorSpace;

    move-result-object v0

    sget-object v1, Lcom/sun/imageio/plugins/jpeg/JPEG;->bOffsRGB:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, v2}, Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;->createInterleaved(Lorg/apache/poi/java/awt/color/ColorSpace;[IIZZ)Lorg/apache/poi/javax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0
.end method
