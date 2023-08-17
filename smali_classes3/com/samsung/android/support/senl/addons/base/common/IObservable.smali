.class public interface abstract Lcom/samsung/android/support/senl/addons/base/common/IObservable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;,
        Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;,
        Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "T::",
        "Ljava/beans/PropertyChangeListener;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000b\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\n\u0008\u0001\u0010\u0002*\u0004\u0018\u00010\u00032\u00020\u0004:\u0003\u000e\u000f\u0010J\u0017\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00018\u0001H&\u00a2\u0006\u0002\u0010\u0008J\u0017\u0010\t\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00018\u0000H&\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u000c\u001a\u00020\u0006H&J\u0017\u0010\r\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00018\u0001H&\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/common/IObservable;",
        "E",
        "T",
        "Ljava/beans/PropertyChangeListener;",
        "",
        "addObserver",
        "",
        "observer",
        "(Ljava/beans/PropertyChangeListener;)V",
        "notifyChanged",
        "type",
        "(Ljava/lang/Object;)V",
        "release",
        "removeObserver",
        "Info",
        "InfoData",
        "Observer",
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
.method public abstract addObserver(Ljava/beans/PropertyChangeListener;)V
    .param p1    # Ljava/beans/PropertyChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract notifyChanged(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract removeObserver(Ljava/beans/PropertyChangeListener;)V
    .param p1    # Ljava/beans/PropertyChangeListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
