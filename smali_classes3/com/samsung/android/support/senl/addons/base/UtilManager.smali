.class public final Lcom/samsung/android/support/senl/addons/base/UtilManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/UtilManager;",
        "",
        "()V",
        "onCreate",
        "",
        "context",
        "Landroid/content/Context;",
        "onDestroy",
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
.field public static final INSTANCE:Lcom/samsung/android/support/senl/addons/base/UtilManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/UtilManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/UtilManager;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/UtilManager;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/UtilManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogics()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/base/utils/ApplicationUtils;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->initializePenLibrary()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/PreferenceUtils;->close()V

    invoke-static {}, Lcom/samsung/android/support/senl/addons/base/utils/ApplicationUtils;->close()V

    return-void
.end method
