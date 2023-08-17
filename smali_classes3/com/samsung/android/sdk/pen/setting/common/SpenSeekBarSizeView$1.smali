.class Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->initSeekBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OnProgressChanged() progress="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " fromUser="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenSeekBarSizeView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->access$000(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;)Landroid/widget/SeekBar;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;

    const/4 v0, 0x1

    add-int/2addr p2, v0

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;IZ)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->isUserEvent()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->setUserEvent(Z)V

    :goto_0
    move p3, v0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->isAutoChanged()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->access$300(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->updateButtonState()V

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->access$400(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;Z)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->access$500(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->access$500(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$OnActionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$OnActionListener;->onStartTrackingTouch()V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->access$500(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$OnActionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$1;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;->access$500(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView;)Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$OnActionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarSizeView$OnActionListener;->onStopTrackingTouch()V

    :cond_0
    return-void
.end method
