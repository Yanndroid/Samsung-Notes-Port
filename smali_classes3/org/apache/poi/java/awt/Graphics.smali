.class public abstract Lorg/apache/poi/java/awt/Graphics;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract clearRect(IIII)V
.end method

.method public abstract clipRect(IIII)V
.end method

.method public abstract copyArea(IIIIII)V
.end method

.method public abstract create()Lorg/apache/poi/java/awt/Graphics;
.end method

.method public create(IIII)Lorg/apache/poi/java/awt/Graphics;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Graphics;->create()Lorg/apache/poi/java/awt/Graphics;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/java/awt/Graphics;->translate(II)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, p3, p4}, Lorg/apache/poi/java/awt/Graphics;->clipRect(IIII)V

    return-object v0
.end method

.method public abstract dispose()V
.end method

.method public draw3DRect(IIIIZ)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Graphics;->getColor()Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Color;->brighter()Lorg/apache/poi/java/awt/Color;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Color;->darker()Lorg/apache/poi/java/awt/Color;

    move-result-object v2

    if-eqz p5, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {p0, v3}, Lorg/apache/poi/java/awt/Graphics;->setColor(Lorg/apache/poi/java/awt/Color;)V

    add-int/2addr p4, p2

    invoke-virtual {p0, p1, p2, p1, p4}, Lorg/apache/poi/java/awt/Graphics;->drawLine(IIII)V

    add-int/lit8 v3, p1, 0x1

    add-int/2addr p1, p3

    add-int/lit8 p3, p1, -0x1

    invoke-virtual {p0, v3, p2, p3, p2}, Lorg/apache/poi/java/awt/Graphics;->drawLine(IIII)V

    if-eqz p5, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Graphics;->setColor(Lorg/apache/poi/java/awt/Color;)V

    invoke-virtual {p0, v3, p4, p1, p4}, Lorg/apache/poi/java/awt/Graphics;->drawLine(IIII)V

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p0, p1, p2, p1, p4}, Lorg/apache/poi/java/awt/Graphics;->drawLine(IIII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Graphics;->setColor(Lorg/apache/poi/java/awt/Color;)V

    return-void
.end method

.method public abstract drawArc(IIIIII)V
.end method

.method public drawBytes([BIIII)V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Ljava/lang/String;-><init>([BIII)V

    invoke-virtual {p0, v0, p4, p5}, Lorg/apache/poi/java/awt/Graphics;->drawString(Ljava/lang/String;II)V

    return-void
.end method

.method public drawChars([CIIII)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0, p4, p5}, Lorg/apache/poi/java/awt/Graphics;->drawString(Ljava/lang/String;II)V

    return-void
.end method

.method public abstract drawImage(Lorg/apache/poi/java/awt/Image;IIIIIIIILorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/image/ImageObserver;)Z
.end method

.method public abstract drawImage(Lorg/apache/poi/java/awt/Image;IIIIIIIILorg/apache/poi/java/awt/image/ImageObserver;)Z
.end method

.method public abstract drawImage(Lorg/apache/poi/java/awt/Image;IIIILorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/image/ImageObserver;)Z
.end method

.method public abstract drawImage(Lorg/apache/poi/java/awt/Image;IIIILorg/apache/poi/java/awt/image/ImageObserver;)Z
.end method

.method public abstract drawImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/image/ImageObserver;)Z
.end method

.method public abstract drawImage(Lorg/apache/poi/java/awt/Image;IILorg/apache/poi/java/awt/image/ImageObserver;)Z
.end method

.method public abstract drawLine(IIII)V
.end method

.method public abstract drawOval(IIII)V
.end method

.method public drawPolygon(Lorg/apache/poi/java/awt/Polygon;)V
    .locals 2

    iget-object v0, p1, Lorg/apache/poi/java/awt/Polygon;->xpoints:[I

    iget-object v1, p1, Lorg/apache/poi/java/awt/Polygon;->ypoints:[I

    iget p1, p1, Lorg/apache/poi/java/awt/Polygon;->npoints:I

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/java/awt/Graphics;->drawPolygon([I[II)V

    return-void
.end method

.method public abstract drawPolygon([I[II)V
.end method

.method public abstract drawPolyline([I[II)V
.end method

.method public drawRect(IIII)V
    .locals 1

    if-ltz p3, :cond_3

    if-gez p4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p4, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr p3, p1

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, p2, v0, p2}, Lorg/apache/poi/java/awt/Graphics;->drawLine(IIII)V

    add-int/2addr p4, p2

    add-int/lit8 v0, p4, -0x1

    invoke-virtual {p0, p3, p2, p3, v0}, Lorg/apache/poi/java/awt/Graphics;->drawLine(IIII)V

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p3, p4, v0, p4}, Lorg/apache/poi/java/awt/Graphics;->drawLine(IIII)V

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p4, p1, p2}, Lorg/apache/poi/java/awt/Graphics;->drawLine(IIII)V

    goto :goto_1

    :cond_2
    :goto_0
    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Graphics;->drawLine(IIII)V

    :cond_3
    :goto_1
    return-void
.end method

.method public abstract drawRoundRect(IIIIII)V
.end method

.method public abstract drawString(Ljava/lang/String;II)V
.end method

.method public abstract drawString(Ljava/text/AttributedCharacterIterator;II)V
.end method

.method public fill3DRect(IIIIZ)V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Graphics;->getColor()Lorg/apache/poi/java/awt/Color;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Color;->brighter()Lorg/apache/poi/java/awt/Color;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Color;->darker()Lorg/apache/poi/java/awt/Color;

    move-result-object v2

    if-nez p5, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/Graphics;->setColor(Lorg/apache/poi/java/awt/Color;)V

    :cond_0
    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, p3, -0x2

    add-int/lit8 v6, p4, -0x2

    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/apache/poi/java/awt/Graphics;->fillRect(IIII)V

    if-eqz p5, :cond_1

    move-object v4, v1

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    invoke-virtual {p0, v4}, Lorg/apache/poi/java/awt/Graphics;->setColor(Lorg/apache/poi/java/awt/Color;)V

    add-int/2addr p4, p2

    add-int/lit8 v4, p4, -0x1

    invoke-virtual {p0, p1, p2, p1, v4}, Lorg/apache/poi/java/awt/Graphics;->drawLine(IIII)V

    add-int/2addr p1, p3

    add-int/lit8 p3, p1, -0x2

    invoke-virtual {p0, v3, p2, p3, p2}, Lorg/apache/poi/java/awt/Graphics;->drawLine(IIII)V

    if-eqz p5, :cond_2

    move-object v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/poi/java/awt/Graphics;->setColor(Lorg/apache/poi/java/awt/Color;)V

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v3, v4, p1, v4}, Lorg/apache/poi/java/awt/Graphics;->drawLine(IIII)V

    add-int/lit8 p4, p4, -0x2

    invoke-virtual {p0, p1, p2, p1, p4}, Lorg/apache/poi/java/awt/Graphics;->drawLine(IIII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Graphics;->setColor(Lorg/apache/poi/java/awt/Color;)V

    return-void
.end method

.method public abstract fillArc(IIIIII)V
.end method

.method public abstract fillOval(IIII)V
.end method

.method public fillPolygon(Lorg/apache/poi/java/awt/Polygon;)V
    .locals 2

    iget-object v0, p1, Lorg/apache/poi/java/awt/Polygon;->xpoints:[I

    iget-object v1, p1, Lorg/apache/poi/java/awt/Polygon;->ypoints:[I

    iget p1, p1, Lorg/apache/poi/java/awt/Polygon;->npoints:I

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/java/awt/Graphics;->fillPolygon([I[II)V

    return-void
.end method

.method public abstract fillPolygon([I[II)V
.end method

.method public abstract fillRect(IIII)V
.end method

.method public abstract fillRoundRect(IIIIII)V
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Graphics;->dispose()V

    return-void
.end method

.method public abstract getClip()Lorg/apache/poi/java/awt/Shape;
.end method

.method public abstract getClipBounds()Lorg/apache/poi/java/awt/Rectangle;
.end method

.method public getClipBounds(Lorg/apache/poi/java/awt/Rectangle;)Lorg/apache/poi/java/awt/Rectangle;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Graphics;->getClipBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iput v1, p1, Lorg/apache/poi/java/awt/Rectangle;->x:I

    iget v1, v0, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iput v1, p1, Lorg/apache/poi/java/awt/Rectangle;->y:I

    iget v1, v0, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iput v1, p1, Lorg/apache/poi/java/awt/Rectangle;->width:I

    iget v0, v0, Lorg/apache/poi/java/awt/Rectangle;->height:I

    iput v0, p1, Lorg/apache/poi/java/awt/Rectangle;->height:I

    goto :goto_0

    :cond_0
    const-string v0, "null rectangle parameter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :goto_0
    return-object p1
.end method

.method public getClipRect()Lorg/apache/poi/java/awt/Rectangle;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Graphics;->getClipBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method public abstract getColor()Lorg/apache/poi/java/awt/Color;
.end method

.method public abstract getFont()Lorg/apache/poi/java/awt/Font;
.end method

.method public getFontMetrics()Lorg/apache/poi/java/awt/FontMetrics;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Graphics;->getFont()Lorg/apache/poi/java/awt/Font;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/Graphics;->getFontMetrics(Lorg/apache/poi/java/awt/Font;)Lorg/apache/poi/java/awt/FontMetrics;

    move-result-object v0

    return-object v0
.end method

.method public abstract getFontMetrics(Lorg/apache/poi/java/awt/Font;)Lorg/apache/poi/java/awt/FontMetrics;
.end method

.method public hitClip(IIII)Z
    .locals 9

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Graphics;->getClipBounds()Lorg/apache/poi/java/awt/Rectangle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    int-to-double v1, p1

    int-to-double v3, p2

    int-to-double v5, p3

    int-to-double v7, p4

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/java/awt/geom/Rectangle2D;->intersects(DDDD)Z

    move-result p1

    return p1
.end method

.method public abstract setClip(IIII)V
.end method

.method public abstract setClip(Lorg/apache/poi/java/awt/Shape;)V
.end method

.method public abstract setColor(Lorg/apache/poi/java/awt/Color;)V
.end method

.method public abstract setFont(Lorg/apache/poi/java/awt/Font;)V
.end method

.method public abstract setPaintMode()V
.end method

.method public abstract setXORMode(Lorg/apache/poi/java/awt/Color;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[font="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Graphics;->getFont()Lorg/apache/poi/java/awt/Font;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/Graphics;->getColor()Lorg/apache/poi/java/awt/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract translate(II)V
.end method
