.class public Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;,
        Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;,
        Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenPressureAttribute;,
        Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$DynamicAttribute;,
        Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorTiltAttribute;,
        Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorPressureAttribute;,
        Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokeColorJitterAttribute;,
        Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StampColorJitterAttribute;,
        Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$WetMixAttribute;,
        Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;,
        Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;,
        Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;,
        Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$TouchTaperAttribute;,
        Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;,
        Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;,
        Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokePathAttribute;,
        Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenBlendMode;,
        Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenRenderingMode;
    }
.end annotation


# instance fields
.field public colorPressureAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorPressureAttribute;

.field public colorTiltAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorTiltAttribute;

.field public dynamicAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$DynamicAttribute;

.field public grainAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;

.field public name:Ljava/lang/String;

.field public penPressureAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenPressureAttribute;

.field public penProperty:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;

.field public penTaperAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;

.field public penTiltAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;

.field public renderingAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;

.field public shapeAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;

.field public stabilizationAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;

.field public stampColorJitterAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StampColorJitterAttribute;

.field public strokeColorJitterAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokeColorJitterAttribute;

.field public strokePathAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokePathAttribute;

.field public touchTaperAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$TouchTaperAttribute;

.field public wetMixAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$WetMixAttribute;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Undefined"

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->name:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokePathAttribute;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokePathAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->strokePathAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokePathAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->stabilizationAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->penTaperAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$TouchTaperAttribute;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$TouchTaperAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->touchTaperAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$TouchTaperAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->shapeAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->grainAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->renderingAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$WetMixAttribute;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$WetMixAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->wetMixAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$WetMixAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StampColorJitterAttribute;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StampColorJitterAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->stampColorJitterAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StampColorJitterAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokeColorJitterAttribute;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokeColorJitterAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->strokeColorJitterAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokeColorJitterAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorPressureAttribute;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorPressureAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->colorPressureAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorPressureAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorTiltAttribute;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorTiltAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->colorTiltAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorTiltAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$DynamicAttribute;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$DynamicAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->dynamicAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$DynamicAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenPressureAttribute;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenPressureAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->penPressureAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenPressureAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->penTiltAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->penProperty:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->name:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokePathAttribute;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->strokePathAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokePathAttribute;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokePathAttribute;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokePathAttribute;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->strokePathAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokePathAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->stabilizationAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->stabilizationAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->penTaperAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->penTaperAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$TouchTaperAttribute;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->touchTaperAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$TouchTaperAttribute;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$TouchTaperAttribute;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$TouchTaperAttribute;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->touchTaperAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$TouchTaperAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->shapeAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->shapeAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->grainAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->grainAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->renderingAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->renderingAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$WetMixAttribute;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->wetMixAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$WetMixAttribute;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$WetMixAttribute;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$WetMixAttribute;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->wetMixAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$WetMixAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StampColorJitterAttribute;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->stampColorJitterAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StampColorJitterAttribute;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StampColorJitterAttribute;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StampColorJitterAttribute;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->stampColorJitterAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StampColorJitterAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokeColorJitterAttribute;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->strokeColorJitterAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokeColorJitterAttribute;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokeColorJitterAttribute;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokeColorJitterAttribute;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->strokeColorJitterAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokeColorJitterAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorPressureAttribute;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->colorPressureAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorPressureAttribute;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorPressureAttribute;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorPressureAttribute;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->colorPressureAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorPressureAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorTiltAttribute;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->colorTiltAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorTiltAttribute;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorTiltAttribute;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorTiltAttribute;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->colorTiltAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorTiltAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$DynamicAttribute;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->dynamicAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$DynamicAttribute;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$DynamicAttribute;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$DynamicAttribute;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->dynamicAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$DynamicAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenPressureAttribute;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->penPressureAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenPressureAttribute;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenPressureAttribute;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenPressureAttribute;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->penPressureAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenPressureAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->penTiltAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->penTiltAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;

    new-instance v0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->penProperty:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;-><init>(Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->penProperty:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->name:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->strokePathAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokePathAttribute;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->strokePathAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokePathAttribute;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokePathAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->stabilizationAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->stabilizationAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StabilizationAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->penTaperAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->penTaperAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTaperAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->touchTaperAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$TouchTaperAttribute;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->touchTaperAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$TouchTaperAttribute;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$TouchTaperAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->shapeAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->shapeAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ShapeAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->grainAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->grainAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$GrainAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->renderingAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->renderingAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$RenderingAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->wetMixAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$WetMixAttribute;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->wetMixAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$WetMixAttribute;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$WetMixAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->stampColorJitterAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StampColorJitterAttribute;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->stampColorJitterAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StampColorJitterAttribute;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StampColorJitterAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->strokeColorJitterAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokeColorJitterAttribute;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->strokeColorJitterAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokeColorJitterAttribute;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$StrokeColorJitterAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->colorPressureAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorPressureAttribute;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->colorPressureAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorPressureAttribute;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorPressureAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->colorTiltAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorTiltAttribute;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->colorTiltAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorTiltAttribute;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$ColorTiltAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->dynamicAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$DynamicAttribute;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->dynamicAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$DynamicAttribute;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$DynamicAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->penPressureAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenPressureAttribute;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->penPressureAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenPressureAttribute;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenPressureAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->penTiltAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;

    iget-object v2, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->penTiltAttribute:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenTiltAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->penProperty:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo;->penProperty:Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/SpenSettingBrushAttributeInfo$PenProperty;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
