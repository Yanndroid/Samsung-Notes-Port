.class final Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$LayoutViewModelBinding;
.super Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LayoutViewModelBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding<",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$LayoutViewModelBinding;",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;",
        "Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;",
        "()V",
        "execute",
        "",
        "view",
        "Landroid/view/View;",
        "data",
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
.method public execute(Landroid/view/View;Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/samsung/android/support/senl/addons/brush/binding/method/BMBrushMenuView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/support/senl/addons/brush/binding/method/BMBrushMenuView;

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/addons/brush/binding/method/BMBrushMenuView;->setLayoutViewModel(Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic execute(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/brush/binding/binder/BrushBindingFactory$LayoutViewModelBinding;->execute(Landroid/view/View;Lcom/samsung/android/support/senl/addons/brush/viewmodel/BrushLayoutViewModel;)V

    return-void
.end method
