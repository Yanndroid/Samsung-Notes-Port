.class public final Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature$Companion;",
        "",
        "()V",
        "SAVE_ASYNC_SLEEP_TIME",
        "",
        "getSAVE_ASYNC_SLEEP_TIME",
        "()I",
        "setSAVE_ASYNC_SLEEP_TIME",
        "(I)V",
        "SUPPORT_FULL_SCREEN",
        "",
        "getSUPPORT_FULL_SCREEN",
        "()Z",
        "setSUPPORT_FULL_SCREEN",
        "(Z)V",
        "SUPPORT_LOCK_ROTATION",
        "getSUPPORT_LOCK_ROTATION",
        "setSUPPORT_LOCK_ROTATION",
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
.field public static final synthetic $$INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature$Companion;

.field private static SAVE_ASYNC_SLEEP_TIME:I

.field private static SUPPORT_FULL_SCREEN:Z

.field private static SUPPORT_LOCK_ROTATION:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature$Companion;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature$Companion;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature$Companion;->$$INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature$Companion;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature$Companion;->SUPPORT_LOCK_ROTATION:Z

    const-string v0, "/sdcard/notes_brush_full.cfg"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/FileUtils;->isExistedFile(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature$Companion;->SUPPORT_FULL_SCREEN:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSAVE_ASYNC_SLEEP_TIME()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature$Companion;->SAVE_ASYNC_SLEEP_TIME:I

    return v0
.end method

.method public final getSUPPORT_FULL_SCREEN()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature$Companion;->SUPPORT_FULL_SCREEN:Z

    return v0
.end method

.method public final getSUPPORT_LOCK_ROTATION()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature$Companion;->SUPPORT_LOCK_ROTATION:Z

    return v0
.end method

.method public final setSAVE_ASYNC_SLEEP_TIME(I)V
    .locals 0

    sput p1, Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature$Companion;->SAVE_ASYNC_SLEEP_TIME:I

    return-void
.end method

.method public final setSUPPORT_FULL_SCREEN(Z)V
    .locals 0

    sput-boolean p1, Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature$Companion;->SUPPORT_FULL_SCREEN:Z

    return-void
.end method

.method public final setSUPPORT_LOCK_ROTATION(Z)V
    .locals 0

    sput-boolean p1, Lcom/samsung/android/support/senl/addons/brush/model/feature/ISupportedFeature$Companion;->SUPPORT_LOCK_ROTATION:Z

    return-void
.end method
