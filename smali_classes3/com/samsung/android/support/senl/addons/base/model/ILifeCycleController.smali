.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0008\u0010\u0007\u001a\u00020\u0006H&J\u0008\u0010\u0008\u001a\u00020\u0003H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0006H&J\u001a\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH&J4\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH&J\u001a\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\r2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H&\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;",
        "",
        "bringToFront",
        "",
        "requestBlockUserInput",
        "enable",
        "",
        "requestChangeView",
        "requestDismissSelectionToUser",
        "requestFinish",
        "isSaved",
        "requestSelectionToUser",
        "type",
        "",
        "callback",
        "Lcom/samsung/android/support/senl/addons/base/model/uidialog/IDialogCallback;",
        "theme",
        "windowToken",
        "Landroid/os/IBinder;",
        "marginBottom",
        "requestSetResult",
        "resultCode",
        "intent",
        "Landroid/content/Intent;",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_ASK_SAVE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController;->Companion:Lcom/samsung/android/support/senl/addons/base/model/ILifeCycleController$Companion;

    return-void
.end method


# virtual methods
.method public abstract bringToFront()V
.end method

.method public abstract requestBlockUserInput(Z)V
.end method

.method public abstract requestChangeView()Z
.end method

.method public abstract requestDismissSelectionToUser()V
.end method

.method public abstract requestFinish(Z)V
.end method

.method public abstract requestSelectionToUser(IILandroid/os/IBinder;ILcom/samsung/android/support/senl/addons/base/model/uidialog/IDialogCallback;)V
    .param p3    # Landroid/os/IBinder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/support/senl/addons/base/model/uidialog/IDialogCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract requestSelectionToUser(ILcom/samsung/android/support/senl/addons/base/model/uidialog/IDialogCallback;)V
    .param p2    # Lcom/samsung/android/support/senl/addons/base/model/uidialog/IDialogCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract requestSetResult(ILandroid/content/Intent;)V
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
