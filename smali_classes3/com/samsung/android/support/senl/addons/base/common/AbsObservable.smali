.class public abstract Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/common/IObservable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Companion;,
        Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "T:",
        "Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer<",
        "*>;>",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/addons/base/common/IObservable<",
        "TE;TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u0000 \u0017*\u0004\u0008\u0000\u0010\u0001*\u000e\u0008\u0001\u0010\u0002*\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004:\u0002\u0017\u0018B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0017\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00018\u0001H\u0016\u00a2\u0006\u0002\u0010\u000bJ$\u0010\u000c\u001a\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\rR\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0000H$J3\u0010\u000c\u001a\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\rR\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00018\u0000H$\u00a2\u0006\u0002\u0010\u000fJ2\u0010\u000c\u001a\u001e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\rR\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0011H$J\u0008\u0010\u0012\u001a\u00020\tH\u0016J\u0017\u0010\u0012\u001a\u00020\t2\u0008\u0010\u000e\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0002\u0010\u0013J\u0016\u0010\u0014\u001a\u00020\t2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0011H\u0016J\u0008\u0010\u0015\u001a\u00020\tH\u0016J\u0017\u0010\u0016\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00018\u0001H\u0016\u00a2\u0006\u0002\u0010\u000bR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;",
        "E",
        "T",
        "Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;",
        "Lcom/samsung/android/support/senl/addons/base/common/IObservable;",
        "()V",
        "mObservable",
        "Ljava/beans/PropertyChangeSupport;",
        "addObserver",
        "",
        "observer",
        "(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V",
        "createInfo",
        "Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;",
        "type",
        "(Ljava/lang/Object;)Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;",
        "data",
        "Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;",
        "notifyChanged",
        "(Ljava/lang/Object;)V",
        "notifyChangedData",
        "release",
        "removeObserver",
        "Companion",
        "Info",
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


# static fields
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final OLD_VALUE:Ljava/lang/String; = "observer"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final mObservable:Ljava/beans/PropertyChangeSupport;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->Companion:Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->mObservable:Ljava/beans/PropertyChangeSupport;

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->mObservable:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public bridge synthetic addObserver(Ljava/beans/PropertyChangeListener;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->addObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    return-void
.end method

.method public abstract createInfo()Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/senl/addons/base/common/AbsObservable<",
            "TE;TT;>.Info<TE;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract createInfo(Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;)Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;
    .param p1    # Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData<",
            "TE;>;)",
            "Lcom/samsung/android/support/senl/addons/base/common/AbsObservable<",
            "TE;TT;>.Info<TE;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract createInfo(Ljava/lang/Object;)Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/samsung/android/support/senl/addons/base/common/AbsObservable<",
            "TE;TT;>.Info<TE;TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public notifyChanged()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->mObservable:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->createInfo()Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;->getId()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->createInfo()Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;

    move-result-object v2

    const-string v3, "observer"

    invoke-virtual {v0, v1, v3, v2}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public notifyChanged(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->mObservable:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->createInfo(Ljava/lang/Object;)Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;->getId()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->createInfo(Ljava/lang/Object;)Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;

    move-result-object p1

    const-string v2, "observer"

    invoke-virtual {v0, v1, v2, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public notifyChangedData(Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;)V
    .locals 3
    .param p1    # Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->mObservable:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->createInfo(Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;)Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;->getId()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->createInfo(Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;)Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;

    move-result-object p1

    const-string v2, "observer"

    invoke-virtual {v0, v1, v2, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public release()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->mObservable:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0}, Ljava/beans/PropertyChangeSupport;->getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;

    move-result-object v0

    const-string v1, "mObservable.propertyChangeListeners"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->mObservable:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v4, v3}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->mObservable:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public bridge synthetic removeObserver(Ljava/beans/PropertyChangeListener;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->removeObserver(Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;)V

    return-void
.end method
