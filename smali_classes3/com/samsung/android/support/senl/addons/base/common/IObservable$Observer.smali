.class public abstract Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/beans/PropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/common/IObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Observer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info<",
        "**>;>",
        "Ljava/lang/Object;",
        "Ljava/beans/PropertyChangeListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u0000*\u0012\u0008\u0002\u0010\u0001*\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u00022\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0017\u0010\u0005\u001a\u00028\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H$\u00a2\u0006\u0002\u0010\u0008J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0002H&\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;",
        "V",
        "Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;",
        "Ljava/beans/PropertyChangeListener;",
        "()V",
        "cast",
        "object",
        "",
        "(Ljava/lang/Object;)Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;",
        "onUpdate",
        "",
        "info",
        "(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;)V",
        "propertyChange",
        "evt",
        "Ljava/beans/PropertyChangeEvent;",
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
.method public abstract cast(Ljava/lang/Object;)Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract onUpdate(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 1
    .param p1    # Ljava/beans/PropertyChangeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "evt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;->cast(Ljava/lang/Object;)Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;->onUpdate(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;)V

    :cond_0
    return-void
.end method
