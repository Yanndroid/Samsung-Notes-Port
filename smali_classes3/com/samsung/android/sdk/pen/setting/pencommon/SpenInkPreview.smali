.class public Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;
.super Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenInkPreview"

.field private static final TIMESTAMP:I = 0xfa


# instance fields
.field private mCurrent:I

.field private mCurrentTime:J

.field private mInterval:J

.field private mPointCount:I

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;-><init>(Landroid/content/Context;)V

    const-string p1, "SpenInkPreview"

    const-string v0, "SpenInkPreview() count=200 timeStamp=250"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xc8

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->setPointCount(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->close()V

    return-void
.end method

.method public getDrawEndEvent()Landroid/view/MotionEvent;
    .locals 7

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mCurrent:I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mPointCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mStartTime:J

    const-wide/16 v4, 0xfa

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

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mCurrent:I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mPointCount:I

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mStartTime:J

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mCurrentTime:J

    const/4 v6, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getEvent(IJJI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mCurrentTime:J

    iget-wide v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mInterval:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mCurrentTime:J

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mCurrent:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mCurrent:I

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawStartEvent()Landroid/view/MotionEvent;
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->getPointCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mPointCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mCurrent:I

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mInterval:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@@@@@ getDrawStartEvent() isFixedWidth()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->isFixedWidth()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpenInkPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mPointCount:I

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mStartTime:J

    iget v2, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mCurrent:I

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v3, v5

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getEvent(IJJI)Landroid/view/MotionEvent;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mCurrent:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mCurrent:I

    iget-wide v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mStartTime:J

    iget-wide v3, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mInterval:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenInkPreview;->mCurrentTime:J

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getPointCount()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getPointCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSizeLevel()I
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->getSizeLevel()I

    move-result v0

    return v0
.end method

.method public bridge synthetic readyToDraw(Landroid/view/View;F)I
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->readyToDraw(Landroid/view/View;F)I

    move-result p1

    return p1
.end method

.method public bridge synthetic readyToDraw(Landroid/view/View;FZ)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->readyToDraw(Landroid/view/View;FZ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic setSizeLevel(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/setting/pencommon/SpenPreview;->setSizeLevel(I)V

    return-void
.end method
