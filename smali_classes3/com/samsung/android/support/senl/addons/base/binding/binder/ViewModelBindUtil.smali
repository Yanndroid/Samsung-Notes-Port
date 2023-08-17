.class public final Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewModelBindUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewModelBindUtil;",
        "",
        "()V",
        "inflate",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BinderBuilder;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "layoutId",
        "",
        "container",
        "Landroid/view/ViewGroup;",
        "attachToContainer",
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


# static fields
.field public static final INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewModelBindUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewModelBindUtil;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewModelBindUtil;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewModelBindUtil;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/binder/ViewModelBindUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Lcom/samsung/android/support/senl/addons/base/binding/binder/BinderBuilder;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const-string p4, "inflater.inflate(layoutI\u2026ainer, attachToContainer)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p4, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "inflater.context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, p1, p2}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingParser;->parseBinding(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/addons/base/binding/binder/BinderBuilder;

    invoke-direct {p2, p3}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BinderBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BinderBuilder;->addBindings(Ljava/util/List;)Lcom/samsung/android/support/senl/addons/base/binding/binder/BinderBuilder;

    return-object p2
.end method
