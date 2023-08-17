.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$DeviceStateChangeCallback;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$Callback;

.field private mDeviceChangeCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$DeviceStateChangeCallback;

.field private mWindowInfoTracker:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$Callback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;->mWindowInfoTracker:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->isFoldableDevice()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$Callback;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$DeviceStateChangeCallback;

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$DeviceStateChangeCallback;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/a;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;->mDeviceChangeCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$DeviceStateChangeCallback;

    new-instance p2, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    invoke-static {p1}, Landroidx/window/layout/b;->a(Landroid/content/Context;)Landroidx/window/layout/WindowInfoTracker;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;-><init>(Landroidx/window/layout/WindowInfoTracker;)V

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;->mWindowInfoTracker:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    invoke-static {p1}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;->mDeviceChangeCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$DeviceStateChangeCallback;

    invoke-virtual {p2, p1, v0, v1}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->addWindowLayoutInfoListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Landroidx/core/util/Consumer;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$Callback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;->mCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$Callback;

    return-object p0
.end method


# virtual methods
.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;->mWindowInfoTracker:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;->mDeviceChangeCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$DeviceStateChangeCallback;

    invoke-virtual {v0, v1}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->removeWindowLayoutInfoListener(Landroidx/core/util/Consumer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;->mWindowInfoTracker:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper;->mDeviceChangeCallback:Lcom/samsung/android/support/senl/nt/composer/main/base/view/system/WindowManagerWrapper$DeviceStateChangeCallback;

    return-void
.end method
