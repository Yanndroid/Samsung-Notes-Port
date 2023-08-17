.class public final Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion$VisibilityBinding;,
        Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion$ContentDescriptionBinding;,
        Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion$ButtonContentDescriptionBinding;,
        Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion$ProgressBarBinding;,
        Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion$ClickableBinding;,
        Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion$TextBinding;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0006\t\n\u000b\u000c\r\u000eB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion;",
        "",
        "()V",
        "createBinding",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;",
        "bind",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBind;",
        "holder",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;",
        "ButtonContentDescriptionBinding",
        "ClickableBinding",
        "ContentDescriptionBinding",
        "ProgressBarBinding",
        "TextBinding",
        "VisibilityBinding",
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

    invoke-direct {p0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion;-><init>()V

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

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "pr_visibility"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion$VisibilityBinding;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion$VisibilityBinding;-><init>()V

    goto :goto_1

    :sswitch_1
    const-string v1, "pr_text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion$TextBinding;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion$TextBinding;-><init>()V

    goto :goto_1

    :sswitch_2
    const-string v1, "pr_button_content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion$ButtonContentDescriptionBinding;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion$ButtonContentDescriptionBinding;-><init>()V

    goto :goto_1

    :sswitch_3
    const-string v1, "pr_clickable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion$ClickableBinding;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion$ClickableBinding;-><init>()V

    goto :goto_1

    :sswitch_4
    const-string v1, "pr_progress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion$ProgressBarBinding;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion$ProgressBarBinding;-><init>()V

    goto :goto_1

    :sswitch_5
    const-string v1, "pr_content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion$ContentDescriptionBinding;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingPropertyFactory$Companion$ContentDescriptionBinding;-><init>()V

    goto :goto_1

    :cond_6
    :goto_0
    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding$EmptyBinding;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding$EmptyBinding;-><init>()V

    :goto_1
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;->setValues(Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x541e38c4 -> :sswitch_5
        -0x49837836 -> :sswitch_4
        -0x2249bb1b -> :sswitch_3
        -0x16ddf3b7 -> :sswitch_2
        -0x134c9eb6 -> :sswitch_1
        0x7b03356f -> :sswitch_0
    .end sparse-switch
.end method
