.class public Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PenProperty"
.end annotation


# instance fields
.field public maxOpacity:F

.field public maxSize:F

.field public minOpacity:F

.field public minSize:F

.field public previewSize:F

.field public smudgePull:F

.field public stampPreview:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->stampPreview:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->previewSize:F

    const/high16 v1, 0x42960000    # 75.0f

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->smudgePull:F

    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->maxSize:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->minSize:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->maxOpacity:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->minOpacity:F

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->stampPreview:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->previewSize:F

    const/high16 v1, 0x42960000    # 75.0f

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->smudgePull:F

    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->maxSize:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->minSize:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->maxOpacity:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->minOpacity:F

    iget-boolean v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->stampPreview:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->stampPreview:Z

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->previewSize:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->previewSize:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->smudgePull:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->smudgePull:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->maxSize:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->maxSize:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->minSize:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->minSize:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->maxOpacity:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->maxOpacity:F

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->minOpacity:F

    iput p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->minOpacity:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->stampPreview:Z

    check-cast p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;

    iget-boolean v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->stampPreview:Z

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->previewSize:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->previewSize:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->smudgePull:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->smudgePull:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->maxSize:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->maxSize:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->minSize:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->minSize:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->maxOpacity:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->maxOpacity:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->minOpacity:F

    iget v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->minOpacity:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
