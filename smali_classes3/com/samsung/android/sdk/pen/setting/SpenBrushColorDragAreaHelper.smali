.class Lcom/samsung/android/sdk/pen/setting/SpenBrushColorDragAreaHelper;
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
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->hasTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->setGuideVisibility(I)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/setting/SpenBrushDragAreaHelper;->setGuideVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
