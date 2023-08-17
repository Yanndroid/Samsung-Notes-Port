.class final Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$MenuHideViewModelBinding;
.super Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MenuHideViewModelBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding<",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00022\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$MenuHideViewModelBinding;",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;",
        "()V",
        "execute",
        "",
        "view",
        "Landroid/view/View;",
        "data",
        "getData",
        "id",
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

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/view/View;Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/samsung/android/support/senl/addons/brush/binding/method/BMBrushMenuView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/support/senl/addons/brush/binding/method/BMBrushMenuView;

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/addons/brush/binding/method/BMBrushMenuView;->setMenuHideViewModel(Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic execute(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$MenuHideViewModelBinding;->execute(Landroid/view/View;Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;)V

    return-void
.end method

.method public getData(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getViewModel()Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IBaseViewModel;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;

    return-object p1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Menu hide viewModel binding : error not found vm"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$MenuHideViewModelBinding;->getData(Ljava/lang/String;)Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushMenuHideViewModel;

    move-result-object p1

    return-object p1
.end method
