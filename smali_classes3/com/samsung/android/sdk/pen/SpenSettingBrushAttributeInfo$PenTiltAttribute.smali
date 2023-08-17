.class public Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PenTiltAttribute"
.end annotation


# instance fields
.field public degree:F

.field public gradation:F

.field public opacity:F

.field public size:F

.field public sizeCompression:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->degree:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->opacity:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->gradation:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->size:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->sizeCompression:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->degree:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->opacity:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->gradation:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->size:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->sizeCompression:Z

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->degree:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->degree:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->opacity:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->opacity:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->gradation:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->gradation:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->size:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->size:F

    iget-boolean p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->sizeCompression:Z

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->sizeCompression:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->degree:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->degree:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->opacity:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->opacity:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->gradation:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->gradation:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->size:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->size:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->sizeCompression:Z

    iget-boolean p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->sizeCompression:Z

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
