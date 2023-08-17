.class Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenViewFlipper;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;)F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->access$100(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr v0, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float p2, p2, v2

    if-gez p2, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;)F

    move-result v2

    cmpl-float p2, p2, v2

    if-lez p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->access$200(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->access$002(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;F)F

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;->access$102(Lcom/samsung/android/sdk/pen/setting/colorpalette/SpenPalette;F)F

    :cond_2
    :goto_1
    return v1
.end method
