.class public abstract Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;
.super Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008&\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0014J\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0006J\u000e\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0006R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u0004\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;",
        "model",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;",
        "(Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V",
        "mIsSelected",
        "",
        "mScreenModel",
        "getMScreenModel",
        "()Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;",
        "setMScreenModel",
        "clearModels",
        "",
        "closeCallbacks",
        "getData",
        "",
        "id",
        "",
        "getOrientation",
        "",
        "getSelected",
        "select",
        "Companion",
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
.field private static final BINDING_ID_ORIENTATION:Ljava/lang/String; = "orientation"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BINDING_ID_SELECTED:Ljava/lang/String; = "selected"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mIsSelected:Z

.field private mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;->Companion:Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    return-void
.end method


# virtual methods
.method public clearModels()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    :cond_0
    return-void
.end method

.method public closeCallbacks()V
    .locals 0

    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "selected"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;->getSelected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "orientation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;->getOrientation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/common/AbsBaseViewModel;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getMScreenModel()Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    return-object v0
.end method

.method public final getOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/addons/base/model/screen/IOrientationMode;->getOrientation()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;->mIsSelected:Z

    return v0
.end method

.method public final select(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;->mIsSelected:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;->mIsSelected:Z

    const-string p1, "selected"

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/common/AbsObservable;->notifyChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setMScreenModel(Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/brush/viewmodel/menu/AbsSelectionViewModel;->mScreenModel:Lcom/samsung/android/support/senl/addons/base/model/screen/IScreenModel;

    return-void
.end method
