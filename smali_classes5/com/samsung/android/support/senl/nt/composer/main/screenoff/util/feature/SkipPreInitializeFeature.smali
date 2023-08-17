.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/feature/SkipPreInitializeFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STATE_CREATED:Ljava/lang/String; = "STATE_CREATED"

.field public static final STATE_DESTROYED:Ljava/lang/String; = "STATE_DESTROYED"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "SkipPreInitializeFeature"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/feature/SkipPreInitializeFeature;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScreenOffActivityState()Ljava/lang/String;
    .locals 3

    const-string v0, "ScreenOffMemoPref"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "ActivityState"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static needToSkipPreInitialize()Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->canWorkOnBackground()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/feature/SkipPreInitializeFeature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToSkipPreInitialize# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static setScreenOffActivityState(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ScreenOffMemoPref"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "ActivityState"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
