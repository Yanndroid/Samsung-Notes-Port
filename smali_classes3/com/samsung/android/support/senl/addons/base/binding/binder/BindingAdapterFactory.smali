.class public final Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingAdapterFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IVMCommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingAdapterFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingAdapterFactory;",
        "Lcom/samsung/android/support/senl/addons/base/viewmodel/common/IVMCommand;",
        "()V",
        "Companion",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingAdapterFactory$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingAdapterFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingAdapterFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingAdapterFactory;->Companion:Lcom/samsung/android/support/senl/addons/base/binding/binder/BindingAdapterFactory$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
