.class final Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion$TransparencyBinding;
.super Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBooleanExecuteBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransparencyBinding"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0002\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion$TransparencyBinding;",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBooleanExecuteBinding;",
        "()V",
        "execute",
        "",
        "view",
        "Landroid/view/View;",
        "data",
        "",
        "(Landroid/view/View;Ljava/lang/Boolean;)V",
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

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBooleanExecuteBinding;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/samsung/android/support/senl/addons/base/binding/methods/BMTransparency;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    check-cast p1, Lcom/samsung/android/support/senl/addons/base/binding/methods/BMTransparency;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/methods/BMTransparency;->setTransparency(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic execute(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion$TransparencyBinding;->execute(Landroid/view/View;Ljava/lang/Boolean;)V

    return-void
.end method
