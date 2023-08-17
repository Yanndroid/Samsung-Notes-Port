.class public interface abstract Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;
.implements Lcom/samsung/android/support/senl/addons/base/viewmodel/ILifeCycleObserver;
.implements Lcom/samsung/android/support/senl/addons/base/model/screen/IWindowMode;
.implements Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenMode;
.implements Lcom/samsung/android/support/senl/addons/base/model/IEventListener;
.implements Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl;
.implements Lcom/samsung/android/support/senl/addons/base/model/screen/IOrientationMode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008f\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u0007J\n\u0010\u0008\u001a\u0004\u0018\u00010\tH&J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH&J\u001c\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H&J\u0008\u0010\u0013\u001a\u00020\u000bH&J\u0008\u0010\u0014\u001a\u00020\u000bH&J\u0010\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0017H&J\u0008\u0010\u0018\u001a\u00020\u000bH&J\u0008\u0010\u0019\u001a\u00020\u000bH&J\u0012\u0010\u001a\u001a\u00020\u000b2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0012H&J\u0008\u0010\u001c\u001a\u00020\u000bH&J\u0008\u0010\u001d\u001a\u00020\u000bH&\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/IActivityLifeCycleObserver;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/ILifeCycleObserver;",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IWindowMode;",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenMode;",
        "Lcom/samsung/android/support/senl/addons/base/model/IEventListener;",
        "Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl;",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IOrientationMode;",
        "getInflateCallback",
        "Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer$OnInflateCallback;",
        "onConfigurationChanged",
        "",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onCreate",
        "intent",
        "Landroid/content/Intent;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onDestroyView",
        "onMultiWindowModeChanged",
        "isInMultiWindowMode",
        "",
        "onPause",
        "onResume",
        "onSaveInstanceState",
        "outState",
        "onStart",
        "onStop",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getInflateCallback()Lcom/samsung/android/support/senl/addons/base/model/canvas/view/ICanvasContainer$OnInflateCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onCreate(Landroid/content/Intent;Landroid/os/Bundle;)V
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDestroyView()V
.end method

.method public abstract onMultiWindowModeChanged(Z)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method
