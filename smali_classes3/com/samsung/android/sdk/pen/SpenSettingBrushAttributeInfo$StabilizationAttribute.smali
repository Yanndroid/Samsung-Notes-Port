.class public Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StabilizationAttribute"
.end annotation


# instance fields
.field public motionFilteringAmount:F

.field public motionFilteringExpression:F

.field public stabilizationAmount:F

.field public streamLineAmount:F

.field public streamLinePressure:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->streamLineAmount:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->streamLinePressure:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->stabilizationAmount:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->motionFilteringAmount:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->motionFilteringExpression:F

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->streamLineAmount:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->streamLinePressure:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->stabilizationAmount:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->motionFilteringAmount:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->motionFilteringExpression:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->streamLineAmount:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->streamLineAmount:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->streamLinePressure:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->streamLinePressure:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->stabilizationAmount:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->stabilizationAmount:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->motionFilteringAmount:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->motionFilteringAmount:F

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->motionFilteringExpression:F

    iput p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->motionFilteringExpression:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->streamLineAmount:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->streamLineAmount:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->streamLinePressure:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->streamLinePressure:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->stabilizationAmount:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->stabilizationAmount:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->motionFilteringAmount:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->motionFilteringAmount:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->motionFilteringExpression:F

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->motionFilteringExpression:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
