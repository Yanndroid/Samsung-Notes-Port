.class public Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShapeAttribute"
.end annotation


# instance fields
.field public azimuth:Z

.field public bitmap:Landroid/graphics/Bitmap;

.field public count:I

.field public countJitter:F

.field public flipX:Z

.field public flipY:Z

.field public pressureRoundness:F

.field public randomized:Z

.field public rotation:F

.field public roundness:F

.field public scatter:F

.field public tiltRoundness:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->scatter:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->rotation:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->count:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->countJitter:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->randomized:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->azimuth:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->flipX:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->flipY:Z

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->roundness:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->pressureRoundness:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->tiltRoundness:F

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->scatter:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->rotation:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->count:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->countJitter:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->randomized:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->azimuth:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->flipX:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->flipY:Z

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->roundness:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->pressureRoundness:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->tiltRoundness:F

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->bitmap:Landroid/graphics/Bitmap;

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->scatter:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->scatter:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->rotation:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->rotation:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->count:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->count:I

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->countJitter:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->countJitter:F

    iget-boolean v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->randomized:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->randomized:Z

    iget-boolean v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->azimuth:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->azimuth:Z

    iget-boolean v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->flipX:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->flipX:Z

    iget-boolean v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->flipY:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->flipY:Z

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->roundness:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->roundness:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->pressureRoundness:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->pressureRoundness:F

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->tiltRoundness:F

    iput p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->tiltRoundness:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->bitmap:Landroid/graphics/Bitmap;

    if-eq v2, v0, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->scatter:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->scatter:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->rotation:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->rotation:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->count:I

    iget v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->count:I

    if-ne v0, v2, :cond_2

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->countJitter:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->countJitter:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->randomized:Z

    iget-boolean v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->randomized:Z

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->azimuth:Z

    iget-boolean v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->azimuth:Z

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->flipX:Z

    iget-boolean v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->flipX:Z

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->flipY:Z

    iget-boolean v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->flipY:Z

    if-ne v0, v2, :cond_2

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->roundness:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->roundness:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->pressureRoundness:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->pressureRoundness:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->tiltRoundness:F

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->tiltRoundness:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
