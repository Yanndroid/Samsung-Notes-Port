.class Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$7;
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$7;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 p1, 0x15

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, p1, :cond_2

    const/16 p1, 0x16

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$7;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$7;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object p2, p1, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getLayoutDirection()I

    move-result p2

    if-eq p2, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$1700(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;Z)Z

    move-result p1

    return p1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$7;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView$7;->this$0:Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;

    iget-object p2, p1, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getLayoutDirection()I

    move-result p2

    if-ne p2, v1, :cond_3

    move v0, v1

    :cond_3
    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;->access$1700(Lcom/samsung/android/sdk/pen/setting/common/SPenSeekBarView;Z)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method
