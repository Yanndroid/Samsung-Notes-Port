.class public Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderingAttribute"
.end annotation


# instance fields
.field public blendMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

.field public burntEdges:F

.field public burntEdgesMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

.field public flow:F

.field public luminanceBlending:Z

.field public mode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenRenderingMode;

.field public wetEdges:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenRenderingMode;->PEN_RENDERING_INTENSE_BLENDING:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenRenderingMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->mode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenRenderingMode;

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->flow:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->wetEdges:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->burntEdges:F

    sget-object v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;->PEN_BLEND_MULTIPLY:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->burntEdgesMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    sget-object v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;->PEN_BLEND_NORMAL:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->blendMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->luminanceBlending:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenRenderingMode;->PEN_RENDERING_INTENSE_BLENDING:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenRenderingMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->mode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenRenderingMode;

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->flow:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->wetEdges:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->burntEdges:F

    sget-object v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;->PEN_BLEND_MULTIPLY:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->burntEdgesMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    sget-object v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;->PEN_BLEND_NORMAL:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->blendMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->luminanceBlending:Z

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->mode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenRenderingMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->mode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenRenderingMode;

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->flow:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->flow:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->wetEdges:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->wetEdges:F

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->burntEdges:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->burntEdges:F

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->burntEdgesMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->burntEdgesMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->blendMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->blendMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    iget-boolean p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->luminanceBlending:Z

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->luminanceBlending:Z

    return-void
.end method

.method private getBlendModeOrdinal()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->blendMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method private getBurntEdgeModeOrdinal()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->burntEdgesMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method private getModeOrdinal()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->mode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenRenderingMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method private setBlendModeOrdinal(I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;->values()[Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->blendMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    return-void
.end method

.method private setBurntEdgeModeOrdinal(I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;->values()[Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->burntEdgesMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    return-void
.end method

.method private setModeOrdinal(I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenRenderingMode;->values()[Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenRenderingMode;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->mode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenRenderingMode;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->mode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenRenderingMode;

    check-cast p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->mode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenRenderingMode;

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->flow:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->flow:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->wetEdges:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->wetEdges:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->burntEdges:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->burntEdges:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->burntEdgesMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->burntEdgesMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->blendMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->blendMode:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->luminanceBlending:Z

    iget-boolean p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->luminanceBlending:Z

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
