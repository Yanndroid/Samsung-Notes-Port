.class public abstract Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsColorExecuteBinding;
.super Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsIntegerExecuteBinding;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsColorExecuteBinding;",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsIntegerExecuteBinding;",
        "()V",
        "convertStringToRes",
        "",
        "data",
        "",
        "(Ljava/lang/String;)Ljava/lang/Integer;",
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
.method public convertStringToRes(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
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
    const/4 v2, 0x0

    if-nez v0, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding;->Companion:Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding$Companion;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "color"

    invoke-virtual {v3, v0, v4, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsExecuteBinding$Companion;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :goto_1
    if-nez p1, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_3
    :goto_2
    return-object v1
.end method

.method public bridge synthetic convertStringToRes(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/AbsColorExecuteBinding;->convertStringToRes(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
