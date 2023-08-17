.class Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColoredPencilPreview;
.super Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;
.source "SourceFile"


# static fields
.field public static final COLOREDPENCIL_PREVIEW_POINT_COUNT:I = 0x14


# instance fields
.field private mPointY:F

.field private mXPoints:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x15

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColoredPencilPreview;->mXPoints:[F

    return-void
.end method


# virtual methods
.method public calculatePoints(Landroid/view/View;F)I
    .locals 2

    const/16 v0, 0x14

    const v1, 0x3ccccccd    # 0.025f

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColoredPencilPreview;->checkDeltaValue(Landroid/view/View;IF)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColoredPencilPreview;->decidePosition(Landroid/view/View;F)I

    move-result p1

    return p1
.end method

.method public checkDeltaValue(Landroid/view/View;IF)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->setPointCount(I)V

    invoke-virtual {p0, p3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->setDp(F)V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColoredPencilPreview;->mXPoints:[F

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->close()V

    return-void
.end method

.method public createEvent(Landroid/view/MotionEvent;FF)Landroid/view/MotionEvent;
    .locals 18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v15

    const/4 v4, 0x0

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    const/4 v7, 0x1

    new-array v5, v7, [Landroid/view/MotionEvent$PointerProperties;

    new-instance v16, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v16 .. v16}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v16, v5, v4

    move/from16 v16, v15

    aget-object v15, v5, v4

    iput v6, v15, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    new-array v7, v7, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v6, v7, v4

    aget-object v6, v7, v4

    const/16 v15, 0x8

    move-object/from16 v17, v5

    move/from16 v5, p2

    invoke-virtual {v6, v15, v5}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    aget-object v5, v7, v4

    const/16 v6, 0x19

    move/from16 v15, p3

    invoke-virtual {v5, v6, v15}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    aget-object v5, v7, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v5, v7, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    aget-object v4, v7, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v6, v17

    move/from16 v15, v16

    invoke-static/range {v0 .. v15}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public decidePosition(Landroid/view/View;F)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getPointCount()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColoredPencilPreview;->mPointY:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColoredPencilPreview;->mXPoints:[F

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, v3

    add-float/2addr p1, p2

    const/4 p2, 0x0

    aput p1, v2, p2

    add-int/lit8 p1, v1, -0x1

    int-to-float p1, p1

    div-float/2addr v0, p1

    const/4 p1, 0x1

    :goto_0
    if-ge p1, v1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColoredPencilPreview;->mXPoints:[F

    add-int/lit8 v2, p1, -0x1

    aget v2, p2, v2

    add-float/2addr v2, v0

    aput v2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->setPointCount(I)V

    return v1
.end method

.method public getEvent(IJJI)Landroid/view/MotionEvent;
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getEvent(IJJI)Landroid/view/MotionEvent;

    move-result-object p2

    if-lez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p3, 0x0

    int-to-float p1, p1

    const p4, 0x3d99999a    # 0.075f

    mul-float/2addr p1, p4

    invoke-virtual {p0, p2, p3, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColoredPencilPreview;->createEvent(Landroid/view/MotionEvent;FF)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->recycle()V

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getPoint(I)Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColoredPencilPreview;->mXPoints:[F

    aget p1, v1, p1

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenColoredPencilPreview;->mPointY:F

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getPressure(I)F
    .locals 0

    const p1, 0x3f333333    # 0.7f

    return p1
.end method
