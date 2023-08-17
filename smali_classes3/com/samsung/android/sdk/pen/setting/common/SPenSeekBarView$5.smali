.class Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$5;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$5;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$1500(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$5;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {p2, p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$1400(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;Landroid/view/View;Z)Z

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$5;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$1600(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1
    return v1
.end method
