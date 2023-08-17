.class public abstract Lorg/apache/poi/java/awt/Graphics2D;
.super Lorg/apache/poi/java/awt/Graphics;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Graphics;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addRenderingHints(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation
.end method

.method public abstract clip(Lorg/apache/poi/java/awt/Shape;)V
.end method

.method public abstract draw(Lorg/apache/poi/java/awt/Shape;)V
.end method

.method public draw3DRect(IIIIZ)V
    .locals 6

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Graphics2D;->getPaint()Lorg/apache/poi/java/awt/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Graphics;->getColor()Lorg/apache/poi/java/awt/Color;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Color;->brighter()Lorg/apache/poi/java/awt/Color;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Color;->darker()Lorg/apache/poi/java/awt/Color;

    move-result-object v1

    if-eqz p5, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {p0, v3}, Lorg/apache/poi/java/awt/Graphics;->setColor(Lorg/apache/poi/java/awt/Color;)V

    add-int/lit8 v3, p4, 0x1

    const/4 v4, 0x1

    invoke-virtual {p0, p1, p2, v4, v3}, Lorg/apache/poi/java/awt/Graphics;->fillRect(IIII)V

    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {p0, v3, p2, v5, v4}, Lorg/apache/poi/java/awt/Graphics;->fillRect(IIII)V

    if-eqz p5, :cond_1

    move-object v2, v1

    :cond_1
    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/Graphics;->setColor(Lorg/apache/poi/java/awt/Color;)V

    add-int p5, p2, p4

    invoke-virtual {p0, v3, p5, p3, v4}, Lorg/apache/poi/java/awt/Graphics;->fillRect(IIII)V

    add-int/2addr p1, p3

    invoke-virtual {p0, p1, p2, v4, p4}, Lorg/apache/poi/java/awt/Graphics;->fillRect(IIII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Graphics2D;->setPaint(Lorg/apache/poi/java/awt/Paint;)V

    return-void
.end method

.method public abstract drawGlyphVector(Lorg/apache/poi/java/awt/font/GlyphVector;FF)V
.end method

.method public abstract drawImage(Lorg/apache/poi/java/awt/image/BufferedImage;Lorg/apache/poi/java/awt/image/BufferedImageOp;II)V
.end method

.method public abstract drawImage(Lorg/apache/poi/java/awt/Image;Lorg/apache/poi/java/awt/geom/AffineTransform;Lorg/apache/poi/java/awt/image/ImageObserver;)Z
.end method

.method public abstract drawRenderableImage(Lorg/apache/poi/java/awt/image/renderable/RenderableImage;Lorg/apache/poi/java/awt/geom/AffineTransform;)V
.end method

.method public abstract drawRenderedImage(Lorg/apache/poi/java/awt/image/RenderedImage;Lorg/apache/poi/java/awt/geom/AffineTransform;)V
.end method

.method public abstract drawString(Ljava/lang/String;FF)V
.end method

.method public abstract drawString(Ljava/lang/String;II)V
.end method

.method public abstract drawString(Ljava/text/AttributedCharacterIterator;FF)V
.end method

.method public abstract drawString(Ljava/text/AttributedCharacterIterator;II)V
.end method

.method public abstract fill(Lorg/apache/poi/java/awt/Shape;)V
.end method

.method public fill3DRect(IIIIZ)V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Graphics2D;->getPaint()Lorg/apache/poi/java/awt/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Graphics;->getColor()Lorg/apache/poi/java/awt/Color;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Color;->brighter()Lorg/apache/poi/java/awt/Color;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/java/awt/Color;->darker()Lorg/apache/poi/java/awt/Color;

    move-result-object v3

    if-nez p5, :cond_0

    invoke-virtual {p0, v3}, Lorg/apache/poi/java/awt/Graphics;->setColor(Lorg/apache/poi/java/awt/Color;)V

    goto :goto_0

    :cond_0
    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Graphics;->setColor(Lorg/apache/poi/java/awt/Color;)V

    :cond_1
    :goto_0
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, -0x2

    add-int/lit8 v6, p4, -0x2

    invoke-virtual {p0, v1, v4, v5, v6}, Lorg/apache/poi/java/awt/Graphics;->fillRect(IIII)V

    if-eqz p5, :cond_2

    move-object v4, v2

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    invoke-virtual {p0, v4}, Lorg/apache/poi/java/awt/Graphics;->setColor(Lorg/apache/poi/java/awt/Color;)V

    const/4 v4, 0x1

    invoke-virtual {p0, p1, p2, v4, p4}, Lorg/apache/poi/java/awt/Graphics;->fillRect(IIII)V

    invoke-virtual {p0, v1, p2, v5, v4}, Lorg/apache/poi/java/awt/Graphics;->fillRect(IIII)V

    if-eqz p5, :cond_3

    move-object v2, v3

    :cond_3
    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/Graphics;->setColor(Lorg/apache/poi/java/awt/Color;)V

    add-int p5, p2, p4

    sub-int/2addr p5, v4

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p0, v1, p5, v2, v4}, Lorg/apache/poi/java/awt/Graphics;->fillRect(IIII)V

    add-int/2addr p1, p3

    sub-int/2addr p1, v4

    sub-int/2addr p4, v4

    invoke-virtual {p0, p1, p2, v4, p4}, Lorg/apache/poi/java/awt/Graphics;->fillRect(IIII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Graphics2D;->setPaint(Lorg/apache/poi/java/awt/Paint;)V

    return-void
.end method

.method public abstract getBackground()Lorg/apache/poi/java/awt/Color;
.end method

.method public abstract getComposite()Lorg/apache/poi/java/awt/Composite;
.end method

.method public abstract getDeviceConfiguration()Lorg/apache/poi/java/awt/GraphicsConfiguration;
.end method

.method public abstract getFontRenderContext()Lorg/apache/poi/java/awt/font/FontRenderContext;
.end method

.method public abstract getPaint()Lorg/apache/poi/java/awt/Paint;
.end method

.method public abstract getRenderingHint(Lorg/apache/poi/java/awt/RenderingHints$Key;)Ljava/lang/Object;
.end method

.method public abstract getRenderingHints()Lorg/apache/poi/java/awt/RenderingHints;
.end method

.method public abstract getStroke()Lorg/apache/poi/java/awt/Stroke;
.end method

.method public abstract getTransform()Lorg/apache/poi/java/awt/geom/AffineTransform;
.end method

.method public abstract hit(Lorg/apache/poi/java/awt/Rectangle;Lorg/apache/poi/java/awt/Shape;Z)Z
.end method

.method public abstract rotate(D)V
.end method

.method public abstract rotate(DDD)V
.end method

.method public abstract scale(DD)V
.end method

.method public abstract setBackground(Lorg/apache/poi/java/awt/Color;)V
.end method

.method public abstract setComposite(Lorg/apache/poi/java/awt/Composite;)V
.end method

.method public abstract setPaint(Lorg/apache/poi/java/awt/Paint;)V
.end method

.method public abstract setRenderingHint(Lorg/apache/poi/java/awt/RenderingHints$Key;Ljava/lang/Object;)V
.end method

.method public abstract setRenderingHints(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation
.end method

.method public abstract setStroke(Lorg/apache/poi/java/awt/Stroke;)V
.end method

.method public abstract setTransform(Lorg/apache/poi/java/awt/geom/AffineTransform;)V
.end method

.method public abstract shear(DD)V
.end method

.method public abstract transform(Lorg/apache/poi/java/awt/geom/AffineTransform;)V
.end method

.method public abstract translate(DD)V
.end method

.method public abstract translate(II)V
.end method
