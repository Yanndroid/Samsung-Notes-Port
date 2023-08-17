.class Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSliderAnimation;->setOnTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarAnimation;->setOnTouchEvent(Landroid/view/MotionEvent;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarProgressAnimation;->setOnTouchEvent(Landroid/view/MotionEvent;)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;->access$400(Lcom/samsung/android/sdk/pen/setting/common/SpenSlider;Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return p1
.end method
