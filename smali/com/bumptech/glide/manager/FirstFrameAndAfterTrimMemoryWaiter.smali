.class final Lcom/bumptech/glide/manager/FirstFrameAndAfterTrimMemoryWaiter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/FrameWaiter;
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1a
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/manager/FirstFrameAndAfterTrimMemoryWaiter;->onTrimMemory(I)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public registerSelf(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
