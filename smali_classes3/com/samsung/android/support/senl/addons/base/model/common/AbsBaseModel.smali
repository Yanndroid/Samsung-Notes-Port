.class public abstract Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;
.super Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/addons/base/common/AbsObservable<",
        "Ljava/lang/Integer;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        ">;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001\u000cB\u0005\u00a2\u0006\u0002\u0010\u0005J\u000c\u0010\u0006\u001a\u00060\u0007R\u00020\u0000H\u0014J\u001a\u0010\u0006\u001a\u00060\u0007R\u00020\u00002\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\tH\u0014J\u001b\u0010\u0006\u001a\u00060\u0007R\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;",
        "Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;",
        "",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel$Observer;",
        "Lcom/samsung/android/support/senl/addons/base/model/common/IBaseModel;",
        "()V",
        "createInfo",
        "Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;",
        "data",
        "Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;",
        "type",
        "(Ljava/lang/Integer;)Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInfo()Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;->createInfo()Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createInfo(Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;)Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;->createInfo(Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;)Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createInfo(Ljava/lang/Object;)Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;->createInfo(Ljava/lang/Integer;)Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;

    move-result-object p1

    return-object p1
.end method

.method public createInfo()Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;-><init>(Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;)V

    return-object v0
.end method

.method public createInfo(Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;)Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;

    invoke-direct {v0, p0, p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;-><init>(Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;)V

    return-object v0
.end method

.method public createInfo(Ljava/lang/Integer;)Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;

    invoke-direct {v0, p0, p0, p1}, Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel$Info;-><init>(Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;Lcom/samsung/android/support/senl/addons/base/model/common/AbsBaseModel;Ljava/lang/Integer;)V

    return-object v0
.end method
