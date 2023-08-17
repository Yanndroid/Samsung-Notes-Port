.class Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$RptUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RptUpdater"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->access$1000(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)Z

    move-result v0

    const-wide/16 v1, 0x14

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)Landroid/widget/SeekBar;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$RptUpdater;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$RptUpdater;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)V

    :goto_0
    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/SeekBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->access$1100(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    invoke-static {v3}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->access$100(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;->access$200(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)Landroid/widget/SeekBar;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$RptUpdater;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$RptUpdater;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl$RptUpdater;-><init>(Lcom/samsung/android/sdk/pen/setting/common/SpenSeekBarButtonControl;)V
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
