.class Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView$1;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->construct(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView$1;->this$0:Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView$1;->this$0:Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->access$000(Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;)Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const-string v0, "SpenPaintingView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged, orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView$1;->val$context:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView$1;->this$0:Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;->access$000(Lcom/samsung/android/sdk/pen/painting/SpenPaintingSurfaceView;)Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/painting/SpenPaintingViewImpl;->setScreenOrientation(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
