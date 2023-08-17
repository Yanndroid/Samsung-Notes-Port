.class Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/composer/SpenComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LifecycleCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/composer/SpenComposer;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/composer/SpenComposer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;->this$0:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/composer/SpenComposer;Lcom/samsung/android/sdk/composer/SpenComposer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;-><init>(Lcom/samsung/android/sdk/composer/SpenComposer;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;->this$0:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->access$200(Lcom/samsung/android/sdk/composer/SpenComposer;)Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const-string p1, "SpenComposer"

    const-string v0, "onActivityPaused"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;->this$0:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->access$100(Lcom/samsung/android/sdk/composer/SpenComposer;)Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onPause()V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;->this$0:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->access$200(Lcom/samsung/android/sdk/composer/SpenComposer;)Landroid/app/Activity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const-string p1, "SpenComposer"

    const-string v0, "onActivityResumed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;->this$0:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->access$100(Lcom/samsung/android/sdk/composer/SpenComposer;)Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onResume()V

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
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;->this$0:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-static {p1}, Lcom/samsung/android/sdk/composer/SpenComposer;->access$100(Lcom/samsung/android/sdk/composer/SpenComposer;)Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onConfigurationChanged()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/SpenComposer$LifecycleCallback;->this$0:Lcom/samsung/android/sdk/composer/SpenComposer;

    invoke-static {v0}, Lcom/samsung/android/sdk/composer/SpenComposer;->access$100(Lcom/samsung/android/sdk/composer/SpenComposer;)Lcom/samsung/android/sdk/composer/SpenComposerImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/composer/SpenComposerImpl;->onTrimMemory(I)V

    return-void
.end method
