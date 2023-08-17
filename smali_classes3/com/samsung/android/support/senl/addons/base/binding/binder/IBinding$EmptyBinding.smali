.class public final Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding$EmptyBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmptyBinding"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\n\u001a\u00020\u0008H\u0016J\u0008\u0010\u000b\u001a\u00020\u0006H\u0016J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0008H\u0016J\u001a\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0004H\u0016\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding$EmptyBinding;",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;",
        "()V",
        "bind",
        "",
        "getBindId",
        "",
        "getExecuteType",
        "",
        "getViewId",
        "getViewKey",
        "getViewModelId",
        "setExecuteType",
        "executeType",
        "setValues",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;",
        "vmHolder",
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;",
        "unbind",
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 0

    return-void
.end method

.method public getBindId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public getExecuteType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getViewId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getViewKey()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getViewModelId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public setExecuteType(I)V
    .locals 0

    return-void
.end method

.method public setValues(Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;)V
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "bind"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public unbind()V
    .locals 0

    return-void
.end method
