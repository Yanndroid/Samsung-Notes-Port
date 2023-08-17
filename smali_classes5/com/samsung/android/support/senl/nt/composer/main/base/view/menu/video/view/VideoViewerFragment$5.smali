.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment$5;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment;->startUpdatePlayTimeTimerTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment$5;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/VideoViewerFragment;)V

    :cond_0
    return-void
.end method
