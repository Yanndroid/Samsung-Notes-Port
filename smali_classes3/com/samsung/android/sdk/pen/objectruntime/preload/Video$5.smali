.class Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$5;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$5;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$000(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$5;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    iget-object v0, p1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mAudioManager:Landroid/media/AudioManager;

    iget-object p1, p1, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->mAudioLisner:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method
