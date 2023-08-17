.class public interface abstract Lorg/apache/poi/java/awt/geom/PathIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SEG_CLOSE:I = 0x4

.field public static final SEG_CUBICTO:I = 0x3

.field public static final SEG_LINETO:I = 0x1

.field public static final SEG_MOVETO:I = 0x0

.field public static final SEG_QUADTO:I = 0x2

.field public static final WIND_EVEN_ODD:I = 0x0

.field public static final WIND_NON_ZERO:I = 0x1


# virtual methods
.method public abstract currentSegment([D)I
.end method

.method public abstract currentSegment([F)I
.end method

.method public abstract getWindingRule()I
.end method

.method public abstract isDone()Z
.end method

.method public abstract next()V
.end method
