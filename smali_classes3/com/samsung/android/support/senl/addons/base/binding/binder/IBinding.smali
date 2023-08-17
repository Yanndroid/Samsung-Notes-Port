.class public interface abstract Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding$EmptyBinding;,
        Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000 \u00122\u00020\u0001:\u0002\u0012\u0013J\u0008\u0010\u0002\u001a\u00020\u0003H&J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\u0007H&J\u0008\u0010\t\u001a\u00020\u0007H&J\n\u0010\n\u001a\u0004\u0018\u00010\u0005H&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0007H&J\u001a\u0010\r\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H&J\u0008\u0010\u0011\u001a\u00020\u0003H&\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;",
        "",
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
        "Companion",
        "EmptyBinding",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXECUTE_IMMEDIATE:I = 0x0

.field public static final EXECUTE_VSYNC:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding;->Companion:Lcom/samsung/android/support/senl/addons/base/binding/binder/IBinding$Companion;

    return-void
.end method


# virtual methods
.method public abstract bind()V
.end method

.method public abstract getBindId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getExecuteType()I
.end method

.method public abstract getViewId()I
.end method

.method public abstract getViewKey()I
.end method

.method public abstract getViewModelId()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract setExecuteType(I)V
.end method

.method public abstract setValues(Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;)V
    .param p1    # Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewBindInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/support/senl/addons/base/binding/binder/IViewModelHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract unbind()V
.end method
