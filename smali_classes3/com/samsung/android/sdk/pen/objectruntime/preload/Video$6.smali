.class Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->startVideoPlay()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$6;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$6;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$000(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$6;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$000(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->canPause()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$6;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$000(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$6;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$000(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$6;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mAudioManager:Landroid/media/AudioManager;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mAudioLisner:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1, p2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_1
    :goto_0
    return p2
.end method
