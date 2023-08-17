.class Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$RptUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RptUpdater"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object v1, v0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$900(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Z

    move-result v0

    const-wide/16 v1, 0x14

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v4, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$RptUpdater;

    invoke-direct {v4, v0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$RptUpdater;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)V

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$800(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v4, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$RptUpdater;

    invoke-direct {v4, v0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$RptUpdater;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
