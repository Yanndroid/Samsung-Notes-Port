.class public Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PenTaperAttribute"
.end annotation


# instance fields
.field public endTipSize:F

.field public frontTipSize:F

.field public opacity:F

.field public pressure:F

.field public size:F

.field public tip:F

.field public tipAnimation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->frontTipSize:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->endTipSize:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->size:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->opacity:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->pressure:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->tip:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->tipAnimation:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->frontTipSize:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->endTipSize:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->size:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->opacity:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->pressure:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->tip:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->tipAnimation:Z

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->frontTipSize:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->frontTipSize:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->endTipSize:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->endTipSize:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->size:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->size:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->opacity:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->opacity:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->pressure:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->pressure:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->tip:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->tip:F

    iget-boolean p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->tipAnimation:Z

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->tipAnimation:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->frontTipSize:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->frontTipSize:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->endTipSize:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->endTipSize:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->size:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->size:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->opacity:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->opacity:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->pressure:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->pressure:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->tip:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->tip:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->tipAnimation:Z

    iget-boolean p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->tipAnimation:Z

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
