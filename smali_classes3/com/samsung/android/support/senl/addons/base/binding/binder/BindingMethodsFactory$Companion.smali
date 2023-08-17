.class public final Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion$InflatedBinding;,
        Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion$TransparencyBinding;,
        Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion$SettingPopupListenerBinding;,
        Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion$SettingPopupDataStoreBinding;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0004\t\n\u000b\u000cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion;",
        "",
        "()V",
        "createBinding",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;",
        "bind",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
        "holder",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;",
        "InflatedBinding",
        "SettingPopupDataStoreBinding",
        "SettingPopupListenerBinding",
        "TransparencyBinding",
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

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createBinding(Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;)Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;
    .locals 2
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

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "md_settingPopupListener"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion$SettingPopupListenerBinding;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion$SettingPopupListenerBinding;-><init>()V

    goto :goto_1

    :sswitch_1
    const-string v1, "md_pupupDataStore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion$SettingPopupDataStoreBinding;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion$SettingPopupDataStoreBinding;-><init>()V

    goto :goto_1

    :sswitch_2
    const-string v1, "md_inflated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion$InflatedBinding;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion$InflatedBinding;-><init>()V

    goto :goto_1

    :sswitch_3
    const-string v1, "md_transparency"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion$TransparencyBinding;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingMethodsFactory$Companion$TransparencyBinding;-><init>()V

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding$EmptyBinding;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding$EmptyBinding;-><init>()V

    :goto_1
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;->setValues(Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x75e24b00 -> :sswitch_3
        -0x1e13931b -> :sswitch_2
        0x4c24cab9 -> :sswitch_1
        0x7d1452b8 -> :sswitch_0
    .end sparse-switch
.end method
