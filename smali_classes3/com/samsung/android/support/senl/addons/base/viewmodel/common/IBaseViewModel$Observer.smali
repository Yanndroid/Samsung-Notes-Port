.class public abstract Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;
.super Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Observer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer<",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Info;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\u0008&\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;",
        "Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Info;",
        "()V",
        "cast",
        "object",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/common/IObservable$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic cast(Ljava/lang/Object;)Lcom/samsung/android/support/senl/addons/base/common/IObservable$Info;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;->cast(Ljava/lang/Object;)Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Info;

    move-result-object p1

    return-object p1
.end method

.method public cast(Ljava/lang/Object;)Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Info;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p1, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Info;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Info;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
