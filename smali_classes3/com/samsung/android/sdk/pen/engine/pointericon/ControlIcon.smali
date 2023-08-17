.class Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public drawable:Landroid/graphics/drawable/Drawable;

.field public drawableName:Ljava/lang/String;

.field public hotSpot:Landroid/graphics/Point;

.field public rotationDegree:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;->drawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;->drawableName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;->rotationDegree:F

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;->hotSpot:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/String;F)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;->drawableName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/ControlIcon;->rotationDegree:F

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
