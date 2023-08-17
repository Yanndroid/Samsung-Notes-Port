.class public Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBottomWeight:F

.field private mMaskResourceId:I

.field private mMaskStrokeResourceId:I

.field private mMaskWeight:F

.field private mPenName:Ljava/lang/String;

.field private mResourceId:I

.field private mStringId:I

.field private mUpperWeight:F


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->mPenName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->mStringId:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->setResourceId(III)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->setWeight(FFF)V

    return-void
.end method


# virtual methods
.method public getBottomWeight()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->mBottomWeight:F

    return v0
.end method

.method public getMaskWeight()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->mMaskWeight:F

    return v0
.end method

.method public getPenMaskResourceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->mMaskResourceId:I

    return v0
.end method

.method public getPenMaskStrokeResourceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->mMaskStrokeResourceId:I

    return v0
.end method

.method public getPenName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->mPenName:Ljava/lang/String;

    return-object v0
.end method

.method public getPenResourceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->mResourceId:I

    return v0
.end method

.method public getPenStringId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->mStringId:I

    return v0
.end method

.method public getUpperWeight()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->mUpperWeight:F

    return v0
.end method

.method public getWeightSum()F
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getUpperWeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getMaskWeight()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->getBottomWeight()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public setResourceId(III)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->mResourceId:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->mMaskResourceId:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->mMaskStrokeResourceId:I

    return-void
.end method

.method public setWeight(FFF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->mUpperWeight:F

    iput p2, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->mMaskWeight:F

    iput p3, p0, Lcom/samsung/android/sdk/pen/setting/drawing/SpenBrushPenViewInfo;->mBottomWeight:F

    return-void
.end method
