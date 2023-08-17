.class Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$1300(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$702(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$3;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$SPenSeekBarChangeListner;->onSizeButtonPressed(Landroid/widget/SeekBar;)V

    :cond_2
    return-void
.end method
