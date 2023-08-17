.class public final Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingFactory$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingFactory$Companion;",
        "",
        "()V",
        "createBinding",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;",
        "bind",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
        "holder",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;",
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
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createBinding(Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;)Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;
    .locals 7
    .param p1    # Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;->getPropertyId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;->isPendingExecutable()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    const-string v6, "action_"

    invoke-static {v0, v6, v5, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-ne v6, v4, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    if-eqz v6, :cond_1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory;->Companion:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingActionFactory$Companion;->createBinding(Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;)Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;

    move-result-object v3

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_2

    const-string v6, "ad_"

    invoke-static {v0, v6, v5, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-ne v6, v4, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    if-eqz v6, :cond_3

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingAdapterFactory;->Companion:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingAdapterFactory$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingAdapterFactory$Companion;->createBinding(Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;)Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;

    move-result-object v3

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    const-string v6, "pr_"

    invoke-static {v0, v6, v5, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-ne v6, v4, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    move v6, v5

    :goto_2
    if-eqz v6, :cond_5

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory;->Companion:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion;->createBinding(Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;)Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;

    move-result-object v3

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    const-string v6, "md_"

    invoke-static {v0, v6, v5, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_6

    move v5, v4

    :cond_6
    if-eqz v5, :cond_7

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory;->Companion:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion;->createBinding(Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;)Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;

    move-result-object v3

    :cond_7
    :goto_3
    if-nez v3, :cond_8

    new-instance p1, Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding$EmptyBinding;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding$EmptyBinding;-><init>()V

    return-object p1

    :cond_8
    if-eqz v1, :cond_9

    invoke-interface {v3, v4}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;->setExecuteType(I)V

    :cond_9
    return-object v3
.end method
