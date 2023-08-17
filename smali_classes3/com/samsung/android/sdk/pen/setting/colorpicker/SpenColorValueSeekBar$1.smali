.class Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar$1;->this$0:Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;->access$000(Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorValueSeekBar;)Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/colorpicker/SpenColorViewTouchUpListener;->onTouchUp()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
