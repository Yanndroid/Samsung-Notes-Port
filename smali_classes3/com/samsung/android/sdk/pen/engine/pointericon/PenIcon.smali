.class Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public color:I

.field public drawable:Landroid/graphics/drawable/Drawable;

.field public isFixedWidth:Z

.field public name:Ljava/lang/String;

.field public particleSize:F

.field public size:F

.field public style:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->color:I

    iget v1, p1, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->color:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->size:F

    iget v1, p1, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->size:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->isFixedWidth:Z

    iget-boolean v1, p1, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->isFixedWidth:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->particleSize:F

    iget v1, p1, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->particleSize:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->style:I

    iget p1, p1, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->style:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/String;IFZFI)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->color:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->size:F

    cmpl-float p1, p1, p3

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->isFixedWidth:Z

    if-ne p1, p4, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->particleSize:F

    cmpl-float p1, p1, p5

    if-nez p1, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/PenIcon;->style:I

    if-ne p1, p6, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
