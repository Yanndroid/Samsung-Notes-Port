.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/DVFSHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final VERSION_CODES_R:I = 0x1e


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "DVFSHandler"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/DVFSHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestDVFSBoost(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/DVFSHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestDVFSBoost : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/os/DVFSHelperCompat;->doBoost(I)Z

    return-void
.end method
