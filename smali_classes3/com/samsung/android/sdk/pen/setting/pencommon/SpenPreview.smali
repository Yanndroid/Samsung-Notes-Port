.class Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PRESSURE_DP:F = 0.025f

.field public static final PRESSURE_START:F = 0.7f

.field public static final PREVIEW_POINT_COUNT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "SpenPreview"

.field private static final TIMESTAMP:I = 0x1f4


# instance fields
.field private mCountOfPoint:I

.field private mCurrent:I

.field private mCurrentTime:J

.field private mDp:F

.field private mDx:F

.field private mInterval:J

.field private mIsFixedWidth:Z

.field private mPointCount:I

.field private mSizeLevel:I

.field private mSpaceDivider:F

.field private mStartPointX:F

.field private mStartPointY:F

.field private mStartTime:J

.field private mStrokeSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mStrokeSize:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mSizeLevel:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mIsFixedWidth:Z

    const/high16 p1, 0x40000000    # 2.0f

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->init(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mStrokeSize:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mSizeLevel:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mIsFixedWidth:Z

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->init(F)V

    return-void
.end method

.method private init(F)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mStartPointX:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mStartPointY:F

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mCountOfPoint:I

    const v0, 0x3ccccccd    # 0.025f

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mDp:F

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mSpaceDivider:F

    return-void
.end method


# virtual methods
.method public calculatePoints(Landroid/view/View;F)I
    .locals 2

    const/16 v0, 0x8

    const v1, 0x3ccccccd    # 0.025f

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->checkDeltaValue(Landroid/view/View;IF)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->decidePosition(Landroid/view/View;F)I

    move-result p1

    return p1
.end method

.method public checkDeltaValue(Landroid/view/View;IF)V
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-double v1, v0

    int-to-double v3, p1

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    div-int/2addr v0, p1

    mul-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->setPointCount(I)V

    add-int/lit8 p2, p2, -0x1

    int-to-float p1, p2

    mul-float/2addr p3, p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getPointCount()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p3, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->setPointCount(I)V

    :goto_0
    invoke-virtual {p0, p3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->setDp(F)V

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public decidePosition(Landroid/view/View;F)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mSpaceDivider:F

    div-float/2addr p2, v1

    int-to-float v0, v0

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getAdditionalDeleteArea(F)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getPointCount()I

    move-result v1

    int-to-float v0, v0

    add-int/lit8 v2, v1, 0x1

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    add-float/2addr v2, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {p0, v2, p1, v0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->setPoint(FFF)V

    return v1
.end method

.method public getAdditionalDeleteArea(F)F
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    return p1
.end method

.method public getDrawEndEvent()Landroid/view/MotionEvent;
    .locals 7

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mCurrent:I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mPointCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mStartTime:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v2

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getEvent(IJJI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawNextEvent()Landroid/view/MotionEvent;
    .locals 7

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mCurrent:I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mPointCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mStartTime:J

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mCurrentTime:J

    const/4 v6, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getEvent(IJJI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mCurrentTime:J

    iget-wide v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mInterval:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mCurrentTime:J

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mCurrent:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mCurrent:I

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawStartEvent()Landroid/view/MotionEvent;
    .locals 10

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getPointCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mPointCount:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mCurrent:I

    add-int/lit8 v1, v0, -0x1

    const/16 v2, 0x1f4

    div-int/2addr v2, v1

    int-to-long v1, v2

    iput-wide v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mInterval:J

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mStartTime:J

    iget v4, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mCurrent:I

    const/4 v9, 0x0

    move-object v3, p0

    move-wide v5, v7

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getEvent(IJJI)Landroid/view/MotionEvent;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mCurrent:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mCurrent:I

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mStartTime:J

    iget-wide v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mInterval:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mCurrentTime:J

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEvent(IJJI)Landroid/view/MotionEvent;
    .locals 15

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getPoint(I)Landroid/graphics/PointF;

    move-result-object v0

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getPressure(I)F

    move-result v8

    move-object v0, p0

    iget v9, v0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mStrokeSize:F

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    move/from16 v5, p6

    invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    return-object v1
.end method

.method public getPoint(I)Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mStartPointX:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mDx:F

    int-to-float p1, p1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mStartPointY:F

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getPointCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mCountOfPoint:I

    return v0
.end method

.method public getPressure(I)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mDp:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    const p1, 0x3f333333    # 0.7f

    sub-float/2addr p1, v0

    return p1
.end method

.method public getSizeLevel()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mSizeLevel:I

    return v0
.end method

.method public isFixedWidth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mIsFixedWidth:Z

    return v0
.end method

.method public readyToDraw(Landroid/view/View;F)I
    .locals 0

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mStrokeSize:F

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->calculatePoints(Landroid/view/View;F)I

    move-result p1

    return p1
.end method

.method public readyToDraw(Landroid/view/View;FZ)I
    .locals 0

    iput-boolean p3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mIsFixedWidth:Z

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mStrokeSize:F

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->calculatePoints(Landroid/view/View;F)I

    move-result p1

    return p1
.end method

.method public setDp(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mDp:F

    return-void
.end method

.method public setPoint(FFF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mStartPointX:F

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mStartPointY:F

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mDx:F

    return-void
.end method

.method public setPointCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mCountOfPoint:I

    return-void
.end method

.method public setSizeLevel(I)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->mSizeLevel:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seSizeLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenPreview"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
