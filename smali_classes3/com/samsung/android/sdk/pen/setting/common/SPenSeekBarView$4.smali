.class Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$1400(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$4;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$RptUpdater;

    invoke-direct {v2, p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$RptUpdater;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return v1
.end method
