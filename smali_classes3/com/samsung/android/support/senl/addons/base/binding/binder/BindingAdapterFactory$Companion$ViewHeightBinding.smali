.class final Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingAdapterFactory$Companion$ViewHeightBinding;
.super Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsIntegerExecuteBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingAdapterFactory$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHeightBinding"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingAdapterFactory$Companion$ViewHeightBinding;",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsIntegerExecuteBinding;",
        "()V",
        "execute",
        "",
        "view",
        "Landroid/view/View;",
        "data",
        "",
        "(Landroid/view/View;Ljava/lang/Integer;)V",
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

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsIntegerExecuteBinding;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAViewLayout;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAViewLayout;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BAViewLayout;->setViewHeight(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic execute(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingAdapterFactory$Companion$ViewHeightBinding;->execute(Landroid/view/View;Ljava/lang/Integer;)V

    return-void
.end method
