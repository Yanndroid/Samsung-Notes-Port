.class Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView$ActivityComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityComponent"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView$ActivityComponent;->this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView$ActivityComponent;-><init>(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView$ActivityComponent;->this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;

    invoke-static {p2}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;->access$200(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;)Landroid/app/Activity;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const-string p1, "SpenWritingSurfaceView"

    const-string p2, "onActivityStarted"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView$ActivityComponent;->this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;->access$200(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;)Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const-string p1, "SpenWritingSurfaceView"

    const-string v0, "onActivityPaused"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView$ActivityComponent;->this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;->access$100(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;)Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->onPause()V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView$ActivityComponent;->this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;->access$200(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;)Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const-string p1, "SpenWritingSurfaceView"

    const-string v0, "onActivityResumed, Restore GL resources"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView$ActivityComponent;->this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;->access$100(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;)Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->onResume()V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView$ActivityComponent;->this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;->access$200(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;)Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const-string p1, "SpenWritingSurfaceView"

    const-string v0, "onActivityStopped"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x50

    if-ne p1, v0, :cond_0

    const-string p1, "SpenWritingSurfaceView"

    const-string v0, "onTrimMemory, Force to clear gl resourced"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/pen/engine/resource/SpenResources;->forceClearResources()V

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView$ActivityComponent;->this$0:Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;->access$100(Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingSurfaceView;)Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/writingview/SpenWritingViewImpl;->onTrimMemory()V

    :cond_0
    return-void
.end method
