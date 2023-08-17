.class final Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder$EmptyViewModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmptyViewModel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u000c\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u000e\u001a\u00020\u00042\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0004H\u0016J\u0012\u0010\u0012\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder$EmptyViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;",
        "()V",
        "addObserver",
        "",
        "observer",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;",
        "close",
        "getData",
        "",
        "id",
        "",
        "notifyChanged",
        "type",
        "perform",
        "action",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;",
        "release",
        "removeObserver",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic addObserver(Ljava/beans/PropertyChangeListener;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder$EmptyViewModel;->addObserver(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;)V

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic notifyChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder$EmptyViewModel;->notifyChanged(Ljava/lang/String;)V

    return-void
.end method

.method public notifyChanged(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public perform(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;->setResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public removeObserver(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic removeObserver(Ljava/beans/PropertyChangeListener;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder$EmptyViewModel;->removeObserver(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;)V

    return-void
.end method
