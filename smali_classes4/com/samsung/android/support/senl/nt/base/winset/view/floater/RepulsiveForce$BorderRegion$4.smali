.class final enum Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion$4;
.super Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;IFFFF)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion;-><init>(Ljava/lang/String;IFFFFLcom/samsung/android/support/senl/nt/base/winset/view/floater/g;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IFFFFLcom/samsung/android/support/senl/nt/base/winset/view/floater/e;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/support/senl/nt/base/winset/view/floater/RepulsiveForce$BorderRegion$4;-><init>(Ljava/lang/String;IFFFF)V

    return-void
.end method


# virtual methods
.method public getDifference(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method
