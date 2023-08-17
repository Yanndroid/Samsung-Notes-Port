.class public Lcom/samsung/android/support/senl/docscan/detect/util/CameraHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ORIENTATIONS:Landroid/util/SparseIntArray;

.field public static final TAG:Ljava/lang/String; = "CameraHelper"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/docscan/detect/util/CameraHelper;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x1

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x2

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x3

    const/16 v2, 0x10e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(III)I
    .locals 0

    if-le p0, p2, :cond_0

    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static getCameraOrientation(II)I
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/docscan/detect/util/CameraHelper;->ORIENTATIONS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    sub-int/2addr p1, p0

    add-int/lit16 p1, p1, 0x168

    rem-int/lit16 p1, p1, 0x168

    return p1
.end method

.method public static modeContains([II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static transformEventByScreenOrientation(Landroid/view/MotionEvent;III)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    int-to-float p1, p2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sub-float/2addr p1, p2

    int-to-float p2, p3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    goto :goto_0

    :cond_1
    int-to-float p1, p3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result p3

    :goto_0
    sub-float/2addr p2, p3

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/view/MotionEvent;->setLocation(FF)V

    :goto_2
    return-void
.end method
