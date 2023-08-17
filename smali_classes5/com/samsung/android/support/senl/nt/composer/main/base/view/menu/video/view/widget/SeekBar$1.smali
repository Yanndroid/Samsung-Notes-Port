.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;->startUpdateTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$Contract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$Contract;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;->updateSeekBarProgress()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/view/widget/SeekBar;->stopUpdateTask()V

    :goto_0
    return-void
.end method
