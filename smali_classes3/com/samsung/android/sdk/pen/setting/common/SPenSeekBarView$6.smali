.class Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$6;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x42

    if-eq p2, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$6;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$1500(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$6;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {p2, p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$1400(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;Landroid/view/View;Z)Z

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$6;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-static {p2, p1}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$1600(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;Landroid/view/View;)V

    :cond_1
    return v0
.end method
