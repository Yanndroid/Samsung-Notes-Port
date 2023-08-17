.class public Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GrainAttribute"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public blendMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

.field public brightness:F

.field public contrast:F

.field public depth:F

.field public depthJitter:F

.field public depthMinimum:F

.field public movement:F

.field public offsetJitter:Z

.field public rotation:F

.field public scale:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->bitmap:Landroid/graphics/Bitmap;

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->movement:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->scale:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->rotation:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->depth:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->depthMinimum:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->depthJitter:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->offsetJitter:Z

    sget-object v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;->PEN_BLEND_MULTIPLY:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->blendMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->brightness:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->contrast:F

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->bitmap:Landroid/graphics/Bitmap;

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->movement:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->scale:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->rotation:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->depth:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->depthMinimum:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->depthJitter:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->offsetJitter:Z

    sget-object v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;->PEN_BLEND_MULTIPLY:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->blendMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->brightness:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->contrast:F

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->bitmap:Landroid/graphics/Bitmap;

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->movement:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->movement:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->scale:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->scale:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->rotation:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->rotation:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->depth:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->depth:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->depthMinimum:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->depthMinimum:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->depthJitter:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->depthJitter:F

    iget-boolean v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->offsetJitter:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->offsetJitter:Z

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->blendMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->blendMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->brightness:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->brightness:F

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->contrast:F

    iput p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->contrast:F

    return-void
.end method

.method private getBlendModeOrdinal()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->blendMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method private setBlendModeOrdinal(I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;->values()[Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->blendMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->bitmap:Landroid/graphics/Bitmap;

    if-eq v2, v0, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->movement:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->movement:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->scale:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->scale:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->rotation:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->rotation:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->depth:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->depth:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->depthMinimum:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->depthMinimum:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->depthJitter:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->depthJitter:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->offsetJitter:Z

    iget-boolean v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->offsetJitter:Z

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->blendMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->blendMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    if-ne v0, v2, :cond_2

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->brightness:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->brightness:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_2

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->contrast:F

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->contrast:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
