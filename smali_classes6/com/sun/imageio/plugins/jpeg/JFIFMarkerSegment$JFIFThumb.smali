.class abstract Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "JFIFThumb"
.end annotation


# instance fields
.field public streamPos:J

.field public final synthetic this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;


# direct methods
.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;)V
    .locals 2

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->streamPos:J

    return-void
.end method

.method public constructor <init>(Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;)V
    .locals 2

    iput-object p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->this$0:Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->streamPos:J

    invoke-virtual {p2}, Lcom/sun/imageio/plugins/jpeg/JPEGBuffer;->getStreamPosition()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sun/imageio/plugins/jpeg/JFIFMarkerSegment$JFIFThumb;->streamPos:J

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLength()I
.end method

.method public abstract getNativeNode()Lorg/apache/poi/javax/imageio/metadata/IIOMetadataNode;
.end method

.method public abstract getThumbnail(Lorg/apache/poi/javax/imageio/stream/ImageInputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;)Lorg/apache/poi/java/awt/image/BufferedImage;
.end method

.method public abstract getWidth()I
.end method

.method public abstract print()V
.end method

.method public abstract write(Lorg/apache/poi/javax/imageio/stream/ImageOutputStream;Lcom/sun/imageio/plugins/jpeg/JPEGImageWriter;)V
.end method
