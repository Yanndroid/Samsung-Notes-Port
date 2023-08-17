.class public abstract Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsDimenExecuteBinding;
.super Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsFloatExecuteBinding;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsDimenExecuteBinding;",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsFloatExecuteBinding;",
        "()V",
        "convertStringToRes",
        "",
        "data",
        "",
        "(Ljava/lang/String;)Ljava/lang/Float;",
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

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsFloatExecuteBinding;-><init>()V

    return-void
.end method


# virtual methods
.method public convertStringToRes(Ljava/lang/String;)Ljava/lang/Float;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsBinding;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    sget-object v2, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;->Companion:Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding$Companion;

    const-string v3, "dimen"

    invoke-virtual {v2, v0, v3, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding$Companion;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_2
    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_4

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    move-object v1, p1

    :cond_5
    :goto_4
    return-object v1
.end method

.method public bridge synthetic convertStringToRes(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsDimenExecuteBinding;->convertStringToRes(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
