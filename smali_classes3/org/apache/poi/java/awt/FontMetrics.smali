.class public abstract Lorg/apache/poi/java/awt/FontMetrics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_FRC:Lorg/apache/poi/java/awt/font/FontRenderContext;

.field private static final serialVersionUID:J = 0x17548f6513f0bb23L


# instance fields
.field public font:Lorg/apache/poi/java/awt/Font;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->loadLibraries()V

    invoke-static {}, Lorg/apache/poi/java/awt/GraphicsEnvironment;->isHeadless()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/FontMetrics;->initIDs()V

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/font/FontRenderContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/poi/java/awt/font/FontRenderContext;-><init>(Lorg/apache/poi/java/awt/geom/AffineTransform;ZZ)V

    sput-object v0, Lorg/apache/poi/java/awt/FontMetrics;->DEFAULT_FRC:Lorg/apache/poi/java/awt/font/FontRenderContext;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Font;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/FontMetrics;->font:Lorg/apache/poi/java/awt/Font;

    return-void
.end method

.method private static native initIDs()V
.end method

.method private myFRC(Lorg/apache/poi/java/awt/Graphics;)Lorg/apache/poi/java/awt/font/FontRenderContext;
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/java/awt/Graphics2D;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/poi/java/awt/Graphics2D;

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Graphics2D;->getFontRenderContext()Lorg/apache/poi/java/awt/font/FontRenderContext;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lorg/apache/poi/java/awt/FontMetrics;->DEFAULT_FRC:Lorg/apache/poi/java/awt/font/FontRenderContext;

    return-object p1
.end method


# virtual methods
.method public bytesWidth([BII)I
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Ljava/lang/String;-><init>([BIII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/FontMetrics;->stringWidth(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public charWidth(C)I
    .locals 3

    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/FontMetrics;->getWidths()[I

    move-result-object v0

    aget p1, v0, p1

    return p1

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [C

    const/4 v2, 0x0

    aput-char p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/poi/java/awt/FontMetrics;->charsWidth([CII)I

    move-result p1

    return p1
.end method

.method public charWidth(I)I
    .locals 2

    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-nez v0, :cond_0

    const p1, 0xffff

    :cond_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/FontMetrics;->getWidths()[I

    move-result-object v0

    aget p1, v0, p1

    return p1

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Ljava/lang/Character;->toChars(I[CI)I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/poi/java/awt/FontMetrics;->charsWidth([CII)I

    move-result p1

    return p1
.end method

.method public charsWidth([CII)I
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lorg/apache/poi/java/awt/FontMetrics;->stringWidth(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getAscent()I
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/FontMetrics;->font:Lorg/apache/poi/java/awt/Font;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Font;->getSize()I

    move-result v0

    return v0
.end method

.method public getDescent()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFont()Lorg/apache/poi/java/awt/Font;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/FontMetrics;->font:Lorg/apache/poi/java/awt/Font;

    return-object v0
.end method

.method public getFontRenderContext()Lorg/apache/poi/java/awt/font/FontRenderContext;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/FontMetrics;->DEFAULT_FRC:Lorg/apache/poi/java/awt/font/FontRenderContext;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/FontMetrics;->getLeading()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/FontMetrics;->getAscent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/FontMetrics;->getDescent()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLeading()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLineMetrics(Ljava/lang/String;IILorg/apache/poi/java/awt/Graphics;)Lorg/apache/poi/java/awt/font/LineMetrics;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/FontMetrics;->font:Lorg/apache/poi/java/awt/Font;

    invoke-direct {p0, p4}, Lorg/apache/poi/java/awt/FontMetrics;->myFRC(Lorg/apache/poi/java/awt/Graphics;)Lorg/apache/poi/java/awt/font/FontRenderContext;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Font;->getLineMetrics(Ljava/lang/String;IILorg/apache/poi/java/awt/font/FontRenderContext;)Lorg/apache/poi/java/awt/font/LineMetrics;

    move-result-object p1

    return-object p1
.end method

.method public getLineMetrics(Ljava/lang/String;Lorg/apache/poi/java/awt/Graphics;)Lorg/apache/poi/java/awt/font/LineMetrics;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/FontMetrics;->font:Lorg/apache/poi/java/awt/Font;

    invoke-direct {p0, p2}, Lorg/apache/poi/java/awt/FontMetrics;->myFRC(Lorg/apache/poi/java/awt/Graphics;)Lorg/apache/poi/java/awt/font/FontRenderContext;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/java/awt/Font;->getLineMetrics(Ljava/lang/String;Lorg/apache/poi/java/awt/font/FontRenderContext;)Lorg/apache/poi/java/awt/font/LineMetrics;

    move-result-object p1

    return-object p1
.end method

.method public getLineMetrics(Ljava/text/CharacterIterator;IILorg/apache/poi/java/awt/Graphics;)Lorg/apache/poi/java/awt/font/LineMetrics;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/FontMetrics;->font:Lorg/apache/poi/java/awt/Font;

    invoke-direct {p0, p4}, Lorg/apache/poi/java/awt/FontMetrics;->myFRC(Lorg/apache/poi/java/awt/Graphics;)Lorg/apache/poi/java/awt/font/FontRenderContext;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Font;->getLineMetrics(Ljava/text/CharacterIterator;IILorg/apache/poi/java/awt/font/FontRenderContext;)Lorg/apache/poi/java/awt/font/LineMetrics;

    move-result-object p1

    return-object p1
.end method

.method public getLineMetrics([CIILorg/apache/poi/java/awt/Graphics;)Lorg/apache/poi/java/awt/font/LineMetrics;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/FontMetrics;->font:Lorg/apache/poi/java/awt/Font;

    invoke-direct {p0, p4}, Lorg/apache/poi/java/awt/FontMetrics;->myFRC(Lorg/apache/poi/java/awt/Graphics;)Lorg/apache/poi/java/awt/font/FontRenderContext;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Font;->getLineMetrics([CIILorg/apache/poi/java/awt/font/FontRenderContext;)Lorg/apache/poi/java/awt/font/LineMetrics;

    move-result-object p1

    return-object p1
.end method

.method public getMaxAdvance()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getMaxAscent()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/FontMetrics;->getAscent()I

    move-result v0

    return v0
.end method

.method public getMaxCharBounds(Lorg/apache/poi/java/awt/Graphics;)Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/FontMetrics;->font:Lorg/apache/poi/java/awt/Font;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/FontMetrics;->myFRC(Lorg/apache/poi/java/awt/Graphics;)Lorg/apache/poi/java/awt/font/FontRenderContext;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/poi/java/awt/Font;->getMaxCharBounds(Lorg/apache/poi/java/awt/font/FontRenderContext;)Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object p1

    return-object p1
.end method

.method public getMaxDecent()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/FontMetrics;->getMaxDescent()I

    move-result v0

    return v0
.end method

.method public getMaxDescent()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/FontMetrics;->getDescent()I

    move-result v0

    return v0
.end method

.method public getStringBounds(Ljava/lang/String;IILorg/apache/poi/java/awt/Graphics;)Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/FontMetrics;->font:Lorg/apache/poi/java/awt/Font;

    invoke-direct {p0, p4}, Lorg/apache/poi/java/awt/FontMetrics;->myFRC(Lorg/apache/poi/java/awt/Graphics;)Lorg/apache/poi/java/awt/font/FontRenderContext;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Font;->getStringBounds(Ljava/lang/String;IILorg/apache/poi/java/awt/font/FontRenderContext;)Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object p1

    return-object p1
.end method

.method public getStringBounds(Ljava/lang/String;Lorg/apache/poi/java/awt/Graphics;)Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/FontMetrics;->font:Lorg/apache/poi/java/awt/Font;

    invoke-direct {p0, p2}, Lorg/apache/poi/java/awt/FontMetrics;->myFRC(Lorg/apache/poi/java/awt/Graphics;)Lorg/apache/poi/java/awt/font/FontRenderContext;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/java/awt/Font;->getStringBounds(Ljava/lang/String;Lorg/apache/poi/java/awt/font/FontRenderContext;)Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object p1

    return-object p1
.end method

.method public getStringBounds(Ljava/text/CharacterIterator;IILorg/apache/poi/java/awt/Graphics;)Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/FontMetrics;->font:Lorg/apache/poi/java/awt/Font;

    invoke-direct {p0, p4}, Lorg/apache/poi/java/awt/FontMetrics;->myFRC(Lorg/apache/poi/java/awt/Graphics;)Lorg/apache/poi/java/awt/font/FontRenderContext;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Font;->getStringBounds(Ljava/text/CharacterIterator;IILorg/apache/poi/java/awt/font/FontRenderContext;)Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object p1

    return-object p1
.end method

.method public getStringBounds([CIILorg/apache/poi/java/awt/Graphics;)Lorg/apache/poi/java/awt/geom/Rectangle2D;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/FontMetrics;->font:Lorg/apache/poi/java/awt/Font;

    invoke-direct {p0, p4}, Lorg/apache/poi/java/awt/FontMetrics;->myFRC(Lorg/apache/poi/java/awt/Graphics;)Lorg/apache/poi/java/awt/font/FontRenderContext;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/poi/java/awt/Font;->getStringBounds([CIILorg/apache/poi/java/awt/font/FontRenderContext;)Lorg/apache/poi/java/awt/geom/Rectangle2D;

    move-result-object p1

    return-object p1
.end method

.method public getWidths()[I
    .locals 4

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/poi/java/awt/FontMetrics;->charWidth(C)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public hasUniformLineMetrics()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/FontMetrics;->font:Lorg/apache/poi/java/awt/Font;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/Font;->hasUniformLineMetrics()Z

    move-result v0

    return v0
.end method

.method public stringWidth(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/poi/java/awt/FontMetrics;->charsWidth([CII)I

    move-result p1

    return p1
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

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/FontMetrics;->getFont()Lorg/apache/poi/java/awt/Font;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "ascent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/FontMetrics;->getAscent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", descent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/FontMetrics;->getDescent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/FontMetrics;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
