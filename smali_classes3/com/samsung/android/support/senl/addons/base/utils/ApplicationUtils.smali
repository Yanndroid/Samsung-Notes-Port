.class public final Lcom/samsung/android/support/senl/addons/base/utils/ApplicationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0007J\u0006\u0010\u000b\u001a\u00020\u0006J\u0010\u0010\u000c\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/base/utils/ApplicationUtils;",
        "",
        "()V",
        "TAG",
        "",
        "mAppPrimaryColor",
        "",
        "mIsInitialized",
        "",
        "close",
        "",
        "getPrimaryColor",
        "initialize",
        "context",
        "Landroid/content/Context;",
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
.field public static final INSTANCE:Lcom/samsung/android/support/senl/addons/base/utils/ApplicationUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mAppPrimaryColor:I

.field private static mIsInitialized:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/addons/base/utils/ApplicationUtils;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/base/utils/ApplicationUtils;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/utils/ApplicationUtils;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/utils/ApplicationUtils;

    const-string v0, "ApplicationUtils"

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/addons/base/utils/ApplicationUtils;->TAG:Ljava/lang/String;

    const/high16 v0, -0x1000000

    sput v0, Lcom/samsung/android/support/senl/addons/base/utils/ApplicationUtils;->mAppPrimaryColor:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final close()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/support/senl/addons/base/utils/ApplicationUtils;->mIsInitialized:Z

    return-void
.end method

.method public static final initialize(Landroid/content/Context;)V
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/support/senl/addons/base/utils/ApplicationUtils;->mIsInitialized:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/samsung/android/support/senl/addons/R$color;->notes_primary_color:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x1000000

    :goto_0
    sput v0, Lcom/samsung/android/support/senl/addons/base/utils/ApplicationUtils;->mAppPrimaryColor:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/support/senl/addons/base/utils/ApplicationUtils;->mIsInitialized:Z

    sget-object v1, Lcom/samsung/android/support/senl/addons/base/utils/ApplicationUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize getColor AppPrimaryColor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0xffffff

    sget v6, Lcom/samsung/android/support/senl/addons/base/utils/ApplicationUtils;->mAppPrimaryColor:I

    and-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v3, "#%06X"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "format(format, *args)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/addons/base/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/addons/base/utils/ToolsToastHandler;->INSTANCE:Lcom/samsung/android/support/senl/addons/base/utils/ToolsToastHandler;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/addons/base/utils/ToolsToastHandler;->setApplicationContext(Landroid/content/Context;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final getPrimaryColor()I
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/addons/base/utils/ApplicationUtils;->mAppPrimaryColor:I

    return v0
.end method
