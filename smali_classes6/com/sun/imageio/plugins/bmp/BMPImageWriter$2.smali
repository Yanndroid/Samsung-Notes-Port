.class Lcom/sun/imageio/plugins/bmp/BMPImageWriter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/imageio/event/IIOWriteWarningListener;


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
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter$2;->this$0:Lcom/sun/imageio/plugins/bmp/BMPImageWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public warningOccurred(Lorg/apache/poi/javax/imageio/ImageWriter;ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageWriter$2;->this$0:Lcom/sun/imageio/plugins/bmp/BMPImageWriter;

    invoke-static {p1, p2, p3}, Lcom/sun/imageio/plugins/bmp/BMPImageWriter;->access$200(Lcom/sun/imageio/plugins/bmp/BMPImageWriter;ILjava/lang/String;)V

    return-void
.end method
