.class public abstract Lorg/apache/poi/java/awt/MultipleGradientPaint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/Paint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;,
        Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;
    }
.end annotation


# instance fields
.field public final colorSpace:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

.field public final colors:[Lorg/apache/poi/java/awt/Color;

.field public final cycleMethod:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

.field public fastGradientArraySize:I

.field public final fractions:[F

.field public gradient:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "[I>;"
        }
    .end annotation
.end field

.field public final gradientTransform:Lorg/apache/poi/java/awt/geom/AffineTransform;

.field public gradients:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "[[I>;"
        }
    .end annotation
.end field

.field public isSimpleLookup:Z

.field public model:Lorg/apache/poi/java/awt/image/ColorModel;

.field public normalizedIntervals:[F

.field public final transparency:I


# direct methods
.method public constructor <init>([F[Lorg/apache/poi/java/awt/Color;Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;Lorg/apache/poi/java/awt/geom/AffineTransform;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Fractions array cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Colors array cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cycle method cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Color space cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Gradient transform cannot be null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_b

    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_a

    const/high16 v0, -0x40800000    # -1.0f

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-ge v3, v1, :cond_2

    aget v6, p1, v3

    cmpg-float v5, v6, v5

    if-ltz v5, :cond_1

    cmpl-float v4, v6, v4

    if-gtz v4, :cond_1

    cmpg-float v0, v6, v0

    if-lez v0, :cond_0

    add-int/lit8 v3, v3, 0x1

    move v0, v6

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Keyframe fractions must be increasing: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fraction values must be in the range 0 to 1: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    array-length v0, p1

    aget v1, p1, v2

    cmpl-float v1, v1, v5

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    move v6, v1

    array-length v7, p1

    sub-int/2addr v7, v3

    aget v7, p1, v7

    cmpl-float v7, v7, v4

    if-eqz v7, :cond_4

    add-int/lit8 v0, v0, 0x1

    move v7, v3

    goto :goto_2

    :cond_4
    move v7, v2

    :goto_2
    new-array v8, v0, [F

    iput-object v8, p0, Lorg/apache/poi/java/awt/MultipleGradientPaint;->fractions:[F

    array-length v9, p1

    invoke-static {p1, v2, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v0, [Lorg/apache/poi/java/awt/Color;

    iput-object p1, p0, Lorg/apache/poi/java/awt/MultipleGradientPaint;->colors:[Lorg/apache/poi/java/awt/Color;

    array-length v9, p2

    invoke-static {p2, v2, p1, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v1, :cond_5

    aput v5, v8, v2

    aget-object v1, p2, v2

    aput-object v1, p1, v2

    :cond_5
    if-eqz v7, :cond_6

    sub-int/2addr v0, v3

    aput v4, v8, v0

    array-length v1, p2

    sub-int/2addr v1, v3

    aget-object v1, p2, v1

    aput-object v1, p1, v0

    :cond_6
    iput-object p4, p0, Lorg/apache/poi/java/awt/MultipleGradientPaint;->colorSpace:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    iput-object p3, p0, Lorg/apache/poi/java/awt/MultipleGradientPaint;->cycleMethod:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    new-instance p1, Lorg/apache/poi/java/awt/geom/AffineTransform;

    invoke-direct {p1, p5}, Lorg/apache/poi/java/awt/geom/AffineTransform;-><init>(Lorg/apache/poi/java/awt/geom/AffineTransform;)V

    iput-object p1, p0, Lorg/apache/poi/java/awt/MultipleGradientPaint;->gradientTransform:Lorg/apache/poi/java/awt/geom/AffineTransform;

    move p1, v2

    move p3, v3

    :goto_3
    array-length p4, p2

    if-ge p1, p4, :cond_8

    if-eqz p3, :cond_7

    aget-object p3, p2, p1

    invoke-virtual {p3}, Lorg/apache/poi/java/awt/Color;->getAlpha()I

    move-result p3

    const/16 p4, 0xff

    if-ne p3, p4, :cond_7

    move p3, v3

    goto :goto_4

    :cond_7
    move p3, v2

    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_8
    if-eqz p3, :cond_9

    goto :goto_5

    :cond_9
    const/4 v3, 0x3

    :goto_5
    iput v3, p0, Lorg/apache/poi/java/awt/MultipleGradientPaint;->transparency:I

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "User must specify at least 2 colors"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Colors and fractions must have equal size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getColorSpace()Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaint;->colorSpace:Lorg/apache/poi/java/awt/MultipleGradientPaint$ColorSpaceType;

    return-object v0
.end method

.method public final getColors()[Lorg/apache/poi/java/awt/Color;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaint;->colors:[Lorg/apache/poi/java/awt/Color;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/java/awt/Color;

    return-object v0
.end method

.method public final getCycleMethod()Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaint;->cycleMethod:Lorg/apache/poi/java/awt/MultipleGradientPaint$CycleMethod;

    return-object v0
.end method

.method public final getFractions()[F
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaint;->fractions:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public final getTransform()Lorg/apache/poi/java/awt/geom/AffineTransform;
    .locals 2

    new-instance v0, Lorg/apache/poi/java/awt/geom/AffineTransform;

    iget-object v1, p0, Lorg/apache/poi/java/awt/MultipleGradientPaint;->gradientTransform:Lorg/apache/poi/java/awt/geom/AffineTransform;

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/geom/AffineTransform;-><init>(Lorg/apache/poi/java/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method public final getTransparency()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/MultipleGradientPaint;->transparency:I

    return v0
.end method
