.class Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG$ThumbnailReadListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/javax/imageio/event/IIOReadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThumbnailReadListener"
.end annotation


# instance fields
.field public reader:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;

.field public final synthetic this$1:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG$ThumbnailReadListener;->this$1:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG$ThumbnailReadListener;->reader:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;

    return-void
.end method


# virtual methods
.method public imageComplete(Lorg/apache/poi/javax/imageio/ImageReader;)V
    .locals 0

    return-void
.end method

.method public imageProgress(Lorg/apache/poi/javax/imageio/ImageReader;F)V
    .locals 0

    iget-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumbJPEG$ThumbnailReadListener;->reader:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;

    invoke-virtual {p1, p2}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;->thumbnailProgress(F)V

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
