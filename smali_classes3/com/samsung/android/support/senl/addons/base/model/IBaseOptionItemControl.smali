.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl$Companion;,
        Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl$IOptionChangeCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000 \t2\u00020\u0001:\u0002\t\nJ\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl;",
        "",
        "onOptionItemSelected",
        "",
        "id",
        "",
        "setOptionChangeCallback",
        "callback",
        "Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl$IOptionChangeCallback;",
        "Companion",
        "IOptionChangeCallback",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MENU_CMD_HOME:I = 0x3e9

.field public static final MENU_CMD_NONE:I = 0x3e8

.field public static final MENU_CTX_CUSTOM_BASE:I = 0xbb8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl;->Companion:Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl$Companion;

    return-void
.end method


# virtual methods
.method public abstract onOptionItemSelected(I)V
.end method

.method public abstract setOptionChangeCallback(Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl$IOptionChangeCallback;)V
    .param p1    # Lcom/samsung/android/support/senl/addons/base/model/IBaseOptionItemControl$IOptionChangeCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
