.class Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->onLoad(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$1;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video$1;->this$0:Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;->access$000(Lcom/samsung/android/sdk/pen/objectruntime/preload/Video;)Lcom/samsung/android/sdk/pen/objectruntime/preload/WrapperVideoView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    :cond_1
    return-void
.end method
