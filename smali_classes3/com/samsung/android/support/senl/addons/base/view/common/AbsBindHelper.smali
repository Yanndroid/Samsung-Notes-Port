.class public abstract Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/view/common/IBindHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010J\u0008\u0010\u0011\u001a\u00020\u000eH\u0016J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0012\u0010\u0014\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0004J\u0008\u0010\u0015\u001a\u00020\u000eH\u0016R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;",
        "Lcom/samsung/android/support/senl/addons/base/view/common/IBindHelper;",
        "instanceModel",
        "Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;",
        "(Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;)V",
        "mMainBinding",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;",
        "getMMainBinding",
        "()Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;",
        "setMMainBinding",
        "(Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;)V",
        "mViewModelCloser",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/IViewModelCloser;",
        "addViewModel",
        "",
        "viewModel",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;",
        "close",
        "getRoot",
        "Landroid/view/View;",
        "removeViewModel",
        "unBind",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mMainBinding:Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mViewModelCloser:Lcom/samsung/android/support/senl/addons/base/viewmodel/IViewModelCloser;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->Companion:Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper$Companion;

    const-string v0, "AbsBindHelper"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/instance/IInstanceModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/viewmodel/ViewModelCloser;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/viewmodel/ViewModelCloser;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->mViewModelCloser:Lcom/samsung/android/support/senl/addons/base/viewmodel/IViewModelCloser;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->getScreenOrientation()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/addons/base/model/screen/IOrientationMode;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final addViewModel(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->mViewModelCloser:Lcom/samsung/android/support/senl/addons/base/viewmodel/IViewModelCloser;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/IViewModelCloser;->addViewModel(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    return-void
.end method

.method public close()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->unBind()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->mMainBinding:Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->mViewModelCloser:Lcom/samsung/android/support/senl/addons/base/viewmodel/IViewModelCloser;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/IViewModelCloser;->close()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->mViewModelCloser:Lcom/samsung/android/support/senl/addons/base/viewmodel/IViewModelCloser;

    :cond_0
    return-void
.end method

.method public final getMMainBinding()Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->mMainBinding:Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    return-object v0
.end method

.method public getRoot()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->mMainBinding:Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final removeViewModel(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->mViewModelCloser:Lcom/samsung/android/support/senl/addons/base/viewmodel/IViewModelCloser;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/addons/base/viewmodel/IViewModelCloser;->removeViewModel(Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;)V

    return-void
.end method

.method public final setMMainBinding(Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->mMainBinding:Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    return-void
.end method

.method public unBind()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unBind - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->mMainBinding:Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/Binder;->unBind()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->getRoot()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/view/common/AbsBindHelper;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method
