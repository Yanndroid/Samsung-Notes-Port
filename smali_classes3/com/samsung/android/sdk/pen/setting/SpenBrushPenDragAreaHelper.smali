.class Lcom/samsung/android/sdk/pen/setting/SpenBrushPenDragAreaHelper;
.super Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/view/View;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;-><init>(Landroid/view/View;ZZ)V

    return-void
.end method


# virtual methods
.method public startDrag(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->hasTarget()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->setGuideVisibility(I)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->setGuideVisibility(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->setGuideAlpha(F)V

    return-void
.end method
