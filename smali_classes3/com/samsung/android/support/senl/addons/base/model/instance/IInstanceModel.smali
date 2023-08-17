.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel;
.implements Lcom/samsung/android/support/senl/addons/base/model/common/ISavableModel;
.implements Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
.implements Lcom/samsung/android/support/senl/addons/base/model/IEventListener;
.implements Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\u0008f\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&J\u0008\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\tH&J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH&J\u0008\u0010\u000f\u001a\u00020\u000cH&J\u0008\u0010\u0010\u001a\u00020\u000cH&J\u0008\u0010\u0011\u001a\u00020\u000cH&J\u0008\u0010\u0012\u001a\u00020\u000cH&J\u0008\u0010\u0013\u001a\u00020\u000cH&J\u0012\u0010\u0014\u001a\u00020\u000c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H&J\u0012\u0010\u0017\u001a\u00020\u000c2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0007H&J\u0012\u0010\u0019\u001a\u00020\u000c2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH&J\u0010\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\tH&J\u0018\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020 H&\u00a8\u0006!"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/ISavableModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;",
        "Lcom/samsung/android/support/senl/addons/base/model/IEventListener;",
        "Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl;",
        "getDataHandler",
        "Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;",
        "isClosed",
        "",
        "isMultiwindow",
        "onConfigurationChanged",
        "",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onCreate",
        "onDestroyView",
        "onPause",
        "onResume",
        "pendingSaveForRecreatedView",
        "setArgument",
        "argument",
        "Landroid/os/Bundle;",
        "setDataHandler",
        "handler",
        "setLifeCycleController",
        "controller",
        "Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;",
        "setMultiwindow",
        "updateDisallowTouchDownArea",
        "enable",
        "navigationBarHeight",
        "",
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
.method public abstract getDataHandler()Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isMultiwindow()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onCreate()V
.end method

.method public abstract onDestroyView()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract pendingSaveForRecreatedView()V
.end method

.method public abstract setArgument(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setDataHandler(Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;)V
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setLifeCycleController(Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;)V
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setMultiwindow(Z)V
.end method

.method public abstract updateDisallowTouchDownArea(ZI)V
.end method
