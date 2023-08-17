.class public interface abstract Lcom/samsung/android/support/senl/addons/executor/IExecuteIntentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/executor/IExecuteIntentBuilder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008f\u0018\u0000 \r2\u00020\u0001:\u0001\rJ\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H&J\u001c\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0007\u001a\u000e\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\t\u0018\u00010\u0008H&J\u0010\u0010\n\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cH&\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/executor/IExecuteIntentBuilder;",
        "",
        "build",
        "Landroid/content/Intent;",
        "context",
        "Landroid/content/Context;",
        "setDataHandler",
        "dataHandler",
        "Ljava/lang/Class;",
        "Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;",
        "setIntentFlags",
        "flags",
        "",
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
.field public static final ARG_TOOL_FORCE_FINISH:Ljava/lang/String; = "tool_force_finish"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ARG_TOOL_FORCE_FINISH_WITH_SAVING:Ljava/lang/String; = "tool_force_finish_with_save"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/support/senl/addons/executor/IExecuteIntentBuilder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/executor/IExecuteIntentBuilder$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/executor/IExecuteIntentBuilder$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/executor/IExecuteIntentBuilder;->Companion:Lcom/samsung/android/support/senl/addons/executor/IExecuteIntentBuilder$Companion;

    return-void
.end method


# virtual methods
.method public abstract build(Landroid/content/Context;)Landroid/content/Intent;
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract setDataHandler(Ljava/lang/Class;)Lcom/samsung/android/support/senl/addons/executor/IExecuteIntentBuilder;
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/support/senl/addons/base/model/IDataHandler;",
            ">;)",
            "Lcom/samsung/android/support/senl/addons/executor/IExecuteIntentBuilder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract setIntentFlags(I)Lcom/samsung/android/support/senl/addons/executor/IExecuteIntentBuilder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
