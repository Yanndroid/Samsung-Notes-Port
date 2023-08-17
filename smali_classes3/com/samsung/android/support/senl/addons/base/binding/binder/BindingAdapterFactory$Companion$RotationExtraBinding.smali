.class final Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingAdapterFactory$Companion$RotationExtraBinding;
.super Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingAdapterFactory$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RotationExtraBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding<",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingAdapterFactory$Companion$RotationExtraBinding;",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;",
        "Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;",
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
.method public execute(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;->getExtraDataType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;->getExtraData()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->setRotation(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;I)V

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;->getExtraDataType()I

    move-result v2

    if-ne v2, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {p2}, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;->getExtraData()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/support/senl/addons/base/binding/adapters/BARotationView;->setRotation(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationEvent;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic execute(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingAdapterFactory$Companion$RotationExtraBinding;->execute(Landroid/view/View;Lcom/samsung/android/support/senl/addons/base/model/screen/rotation/IRotationExtraEvent;)V

    return-void
.end method
