.class public interface abstract Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003H&\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;",
        "",
        "isSPenOnlyMode",
        "",
        "isSPenSupport",
        "setSPenOnlyMode",
        "",
        "enable",
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
.field public static final Companion:Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SETTINGS_PREFS_NAME:Ljava/lang/String; = "Settings"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SETTINGS_SPEN_ONLY_MODE:Ljava/lang/String; = "settings_spen_only_mode"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SETTINGS_SPEN_SUPPORTED:Ljava/lang/String; = "settings_spen_supported"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler$Companion;

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler;->Companion:Lcom/samsung/android/support/senl/addons/base/model/setting/ISPenOnlyModeHandler$Companion;

    return-void
.end method


# virtual methods
.method public abstract isSPenOnlyMode()Z
.end method

.method public abstract isSPenSupport()Z
.end method

.method public abstract setSPenOnlyMode(Z)V
.end method
