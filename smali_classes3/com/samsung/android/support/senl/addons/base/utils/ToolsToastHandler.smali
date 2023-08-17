.class public final Lcom/samsung/android/support/senl/addons/base/utils/ToolsToastHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\u0008\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\r\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/utils/ToolsToastHandler;",
        "",
        "()V",
        "mApplicationContext",
        "Landroid/content/Context;",
        "setApplicationContext",
        "",
        "context",
        "showLong",
        "id",
        "",
        "content",
        "",
        "showShort",
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
.field public static final INSTANCE:Lcom/samsung/android/support/senl/addons/base/utils/ToolsToastHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mApplicationContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/utils/ToolsToastHandler;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/utils/ToolsToastHandler;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/utils/ToolsToastHandler;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/utils/ToolsToastHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final showLong(I)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/ToolsToastHandler;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->showToast(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final setApplicationContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p1, Lcom/samsung/android/support/senl/addons/base/utils/ToolsToastHandler;->mApplicationContext:Landroid/content/Context;

    return-void
.end method

.method public final showLong(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/ToolsToastHandler;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final showShort(I)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/ToolsToastHandler;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->showToast(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method public final showShort(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/ToolsToastHandler;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
