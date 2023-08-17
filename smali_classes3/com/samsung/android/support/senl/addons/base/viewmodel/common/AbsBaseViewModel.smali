.class public abstract Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;
.super Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel$Info;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/addons/base/common/AbsObservable<",
        "Ljava/lang/String;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;",
        ">;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001\u0018B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH$J\u0008\u0010\n\u001a\u00020\tH\u0016J\u0008\u0010\u000b\u001a\u00020\tH$J\u0008\u0010\u000c\u001a\u00020\tH$J\u000c\u0010\r\u001a\u00060\u000eR\u00020\u0000H\u0016J\u001a\u0010\r\u001a\u00060\u000eR\u00020\u00002\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0010H\u0016J\u0016\u0010\r\u001a\u00060\u000eR\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0002H\u0016J\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0015\u001a\u00020\t2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;",
        "",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Observer;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;",
        "()V",
        "mDebugger",
        "Lcom/samsung/android/support/senl/addons/base/utils/InstanceCloseDebugger;",
        "clearModels",
        "",
        "close",
        "closeCallbacks",
        "closeSubViewModels",
        "createInfo",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel$Info;",
        "data",
        "Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;",
        "type",
        "getData",
        "",
        "id",
        "perform",
        "action",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;",
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


# instance fields
.field private mDebugger:Lcom/samsung/android/support/senl/addons/base/utils/InstanceCloseDebugger;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/InstanceCloseDebugger;->Companion:Lcom/samsung/android/support/senl/addons/base/utils/InstanceCloseDebugger$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/utils/InstanceCloseDebugger$Companion;->canRun()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/utils/InstanceCloseDebugger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "this.javaClass.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "AbsBaseViewModel"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/support/senl/addons/base/utils/InstanceCloseDebugger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->mDebugger:Lcom/samsung/android/support/senl/addons/base/utils/InstanceCloseDebugger;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract clearModels()V
.end method

.method public close()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->closeSubViewModels()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->clearModels()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->closeCallbacks()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->mDebugger:Lcom/samsung/android/support/senl/addons/base/utils/InstanceCloseDebugger;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "this.javaClass.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/InstanceCloseDebugger;->close(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->mDebugger:Lcom/samsung/android/support/senl/addons/base/utils/InstanceCloseDebugger;

    :cond_0
    return-void
.end method

.method public abstract closeCallbacks()V
.end method

.method public abstract closeSubViewModels()V
.end method

.method public bridge synthetic createInfo()Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->createInfo()Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel$Info;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createInfo(Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;)Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->createInfo(Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;)Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel$Info;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createInfo(Ljava/lang/Object;)Lcom/samsung/android/support/senl/addons/base/common/AbsObservable$Info;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->createInfo(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel$Info;

    move-result-object p1

    return-object p1
.end method

.method public createInfo()Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel$Info;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel$Info;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel$Info;-><init>(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;)V

    return-object v0
.end method

.method public createInfo(Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;)Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel$Info;
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel$Info;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel$Info;

    invoke-direct {v0, p0, p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel$Info;-><init>(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;Lcom/samsung/android/support/senl/addons/base/common/IObservable$InfoData;)V

    return-object v0
.end method

.method public createInfo(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel$Info;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel$Info;

    invoke-direct {v0, p0, p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel$Info;-><init>(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;Ljava/lang/String;)V

    return-object v0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public perform(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel$Action;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method
