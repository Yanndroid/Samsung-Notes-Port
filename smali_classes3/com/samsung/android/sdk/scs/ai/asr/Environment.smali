.class public Lcom/samsung/android/sdk/scs/ai/asr/Environment;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Environment"

.field private static final asrServerInfos:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final btcLocaleDatas:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData<",
            "Ljava/util/List<",
            "Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final localeDatas:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData<",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sFuncGetLocales:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final errorCode:I

.field private final isAvailable:Z

.field private storeLinkIntent:Landroid/content/Intent;

.field private final targetPackage:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/g0;->a:Lcom/samsung/android/sdk/scs/ai/asr/g0;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/e0;->a:Lcom/samsung/android/sdk/scs/ai/asr/e0;

    :goto_0
    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->sFuncGetLocales:Ljava/util/function/Function;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/c0;->a:Lcom/samsung/android/sdk/scs/ai/asr/c0;

    const-string v2, "locale"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/k;->a:Lcom/samsung/android/sdk/scs/ai/asr/k;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;->setChecker(Ljava/util/function/Function;)Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;->build()Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->localeDatas:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/c0;->a:Lcom/samsung/android/sdk/scs/ai/asr/c0;

    const-string v2, "btc_locale"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/i;->a:Lcom/samsung/android/sdk/scs/ai/asr/i;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;->setChecker(Ljava/util/function/Function;)Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;->build()Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->btcLocaleDatas:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/c0;->a:Lcom/samsung/android/sdk/scs/ai/asr/c0;

    const-string v2, "asrServerInfo"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/m;->a:Lcom/samsung/android/sdk/scs/ai/asr/m;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;->setChecker(Ljava/util/function/Function;)Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData$Builder;->build()Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->asrServerInfos:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "is_available"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "error_code"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "resource_package_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;-><init>(ZILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(ZILjava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->isAvailable:Z

    iput p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->errorCode:I

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->targetPackage:Ljava/lang/String;

    if-eqz p3, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->storeLinkIntent:Landroid/content/Intent;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "samsungapps://ProductDetail/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->storeLinkIntent:Landroid/content/Intent;

    const-string/jumbo p2, "type"

    const-string p3, "cover"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->storeLinkIntent:Landroid/content/Intent;

    const p2, 0x14000020

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$getDictationTermsOfServiceUrl$11(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$getSupportedServerInfos$10(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->getSupportedLocalesFromCP(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static callContentProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "Environment"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call cp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->getURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/asr/d0;->a:Lcom/samsung/android/sdk/scs/ai/asr/d0;

    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/w;

    invoke-direct {v2, v1, p1, p2, p3}, Lcom/samsung/android/sdk/scs/ai/asr/w;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to call cp "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p0
.end method

.method private static createLocaleInfo(Ljava/util/Locale;)Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;-><init>(Ljava/util/Locale;Ljava/lang/String;I)V

    return-object v1
.end method

.method public static synthetic d(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$getSupportedLocaleInfos$7(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/util/Locale;)Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$null$5(Ljava/util/Locale;)Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$static$1(Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$getSupportedLocales$3(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/content/Context;Ljava/util/Locale;Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)Lcom/samsung/android/sdk/scs/ai/asr/Environment;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Locale;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->isSupportedSpeechRecognition(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;

    const/4 p1, 0x0

    const/4 p2, -0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;-><init>(ZILjava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;->getTypeInt()I

    move-result p2

    const-string v2, "connection_type"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p2, Lcom/samsung/android/sdk/scs/ai/asr/Repository;->settings:Lcom/samsung/android/sdk/scs/ai/asr/Repository;

    sget-object v2, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;->DICTATION_LANGUAGE_INFO:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;

    invoke-interface {p2, v2}, Lcom/samsung/android/sdk/scs/ai/asr/Repository;->getServerType(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;)Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;

    move-result-object p2

    const-string v2, "server_type"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p2, "locale"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "check_availability"

    invoke-static {p0, p1, v1, v0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->callContentProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/asr/Environment;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;-><init>(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    return-object v0
.end method

.method public static getCurrentServerInfo(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;)Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/Repository;->settings:Lcom/samsung/android/sdk/scs/ai/asr/Repository;

    invoke-interface {v0, p0}, Lcom/samsung/android/sdk/scs/ai/asr/Repository;->getServerType(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;)Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->getSupportedServerLists(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/s;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/scs/ai/asr/s;-><init>(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static getCurrentServerType(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;)Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/Repository;->settings:Lcom/samsung/android/sdk/scs/ai/asr/Repository;

    invoke-interface {v0, p0}, Lcom/samsung/android/sdk/scs/ai/asr/Repository;->getServerType(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;)Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;

    move-result-object p0

    return-object p0
.end method

.method public static getDictationTermsOfServiceUrl(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->isSupportedSpeechRecognition(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "get_server_asr_tos_url"

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {p0, v1, v0, v2}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->callContentProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/h0;->a:Lcom/samsung/android/sdk/scs/ai/asr/h0;

    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/g;->a:Lcom/samsung/android/sdk/scs/ai/asr/g;

    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public static getSupportedBTCLocaleInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->isSupportedSpeechRecognition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->btcLocaleDatas:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/a0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/scs/ai/asr/a0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->getOrCompute(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getSupportedBTCLocaleInfosFromCP(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "server_type"

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/asr/Repository;->settings:Lcom/samsung/android/sdk/scs/ai/asr/Repository;

    sget-object v3, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;->BTC_LANGUAGES_INFO:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;

    invoke-interface {v2, v3}, Lcom/samsung/android/sdk/scs/ai/asr/Repository;->getServerType(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;)Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "get_btc_locale_list"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->callContentProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/i0;->a:Lcom/samsung/android/sdk/scs/ai/asr/i0;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/j;->a:Lcom/samsung/android/sdk/scs/ai/asr/j;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/scs/ai/sdkcommon/tts/a;->a:Lcom/samsung/android/scs/ai/sdkcommon/tts/a;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedLocaleInfos(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)Ljava/util/List;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->isSupportedSpeechRecognition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "connection_type"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;->getTypeInt()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "server_type"

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/asr/Repository;->settings:Lcom/samsung/android/sdk/scs/ai/asr/Repository;

    sget-object v2, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;->DICTATION_LANGUAGE_INFO:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/Repository;->getServerType(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;)Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "get_locale_list"

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->callContentProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/sdk/scs/ai/asr/j0;->a:Lcom/samsung/android/sdk/scs/ai/asr/j0;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/sdk/scs/ai/asr/p;->a:Lcom/samsung/android/sdk/scs/ai/asr/p;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/scs/ai/sdkcommon/tts/a;->a:Lcom/samsung/android/scs/ai/sdkcommon/tts/a;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedLocales(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->isSupportedSpeechRecognition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->localeDatas:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/z;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/scs/ai/asr/z;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->getOrCompute(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getSupportedLocalesFromCP(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    const-string v0, "Environment"

    :try_start_0
    const-class v1, Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;

    invoke-static {v1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/EnumSet;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/asr/f;->a:Lcom/samsung/android/sdk/scs/ai/asr/f;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/l;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/scs/ai/asr/l;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/asr/c;->a:Lcom/samsung/android/sdk/scs/ai/asr/c;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/asr/y;->a:Lcom/samsung/android/sdk/scs/ai/asr/y;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/asr/o;->a:Lcom/samsung/android/sdk/scs/ai/asr/o;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/asr/h;->a:Lcom/samsung/android/sdk/scs/ai/asr/h;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    return-object v1

    :cond_0
    const-string v1, "Failed to get locale from cp"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error to get locales from cp "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->getSupportedLocalesFromRes(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getSupportedLocalesFromRes(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    const-string v0, "Environment"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.sec.speech.RecognitionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "network_supported_locales"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "local_supported_locales"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/asr/h;->a:Lcom/samsung/android/sdk/scs/ai/asr/h;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/asr/h;->a:Lcom/samsung/android/sdk/scs/ai/asr/h;

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "Failed to get locales from resources "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportedServerInfos(Landroid/content/Context;Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->isSupportedSpeechRecognition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->asrServerInfos:Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/b0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/scs/ai/asr/b0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/ExpiringData;->getOrCompute(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/r;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/r;-><init>(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getSupportedServerLists(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "get_server_list"

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-static {p0, v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->callContentProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/b;->a:Lcom/samsung/android/sdk/scs/ai/asr/b;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/n;->a:Lcom/samsung/android/sdk/scs/ai/asr/n;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/scs/ai/sdkcommon/tts/a;->a:Lcom/samsung/android/scs/ai/sdkcommon/tts/a;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getURI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/f0;->a:Lcom/samsung/android/sdk/scs/ai/asr/f0;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v0, "content://"

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "com.samsung.android.scs.ai.speech2"

    goto :goto_0

    :cond_0
    const-string p0, "Environment"

    const-string v1, "System permission doesn\'t have granted."

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "com.samsung.android.scs.ai.speech"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$getURI$12(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$getSupportedBTCLocaleInfos$4(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static isSupportedSpeechRecognition(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "FEATURE_SPEECH_RECOGNITION"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->checkFeature(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$getCurrentServerInfo$8(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$null$17(Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$getSupportedLocalesFromCP$13(Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$callContentProvider$19(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/ContentResolver;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p4, p0, p1, p2, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getCurrentServerInfo$8(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getDictationTermsOfServiceUrl$11(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "server_asr_tos_url"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getSupportedBTCLocaleInfos$4(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->getSupportedBTCLocaleInfosFromCP(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getSupportedBTCLocaleInfosFromCP$16(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 1

    const-class v0, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "btc_locale_info_list"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getSupportedBTCLocaleInfosFromCP$18(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/t;->a:Lcom/samsung/android/sdk/scs/ai/asr/t;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/u;->a:Lcom/samsung/android/sdk/scs/ai/asr/u;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/d;->a:Lcom/samsung/android/sdk/scs/ai/asr/d;

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static synthetic lambda$getSupportedLocaleInfos$6(Landroid/os/Bundle;)Ljava/util/List;
    .locals 2

    const-class v0, Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "locale_info_list"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "Environment"

    const-string v1, "Failed to get locale info from scs. so generate based on locales."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "locale_list"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/h;->a:Lcom/samsung/android/sdk/scs/ai/asr/h;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/q;->a:Lcom/samsung/android/sdk/scs/ai/asr/q;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/v;->a:Lcom/samsung/android/sdk/scs/ai/asr/v;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static synthetic lambda$getSupportedLocaleInfos$7(Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/e;->a:Lcom/samsung/android/sdk/scs/ai/asr/e;

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static synthetic lambda$getSupportedLocales$3(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->sFuncGetLocales:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static synthetic lambda$getSupportedLocalesFromCP$13(Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/asr/ConnectionType;->getTypeInt()I

    move-result p0

    const-string v1, "connection_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p0, Lcom/samsung/android/sdk/scs/ai/asr/Repository;->settings:Lcom/samsung/android/sdk/scs/ai/asr/Repository;

    sget-object v1, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;->DICTATION_LANGUAGE_INFO:Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;

    invoke-interface {p0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/Repository;->getServerType(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;)Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;

    move-result-object p0

    const-string v1, "server_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method private static synthetic lambda$getSupportedLocalesFromCP$14(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "get_locale_list"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->callContentProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getSupportedLocalesFromCP$15(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 1

    const-string v0, "locale_list"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getSupportedServerInfos$10(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;->getFeature()Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getSupportedServerInfos$9(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->getSupportedServerLists(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getSupportedServerLists$20(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 1

    const-class v0, Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "result_server_list"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getSupportedServerLists$21(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/x;->a:Lcom/samsung/android/sdk/scs/ai/asr/x;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static synthetic lambda$getURI$12(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "com.samsung.android.scs.ai.asr.permission.SYSTEM_SPEECH_RECOGNITION_SERVICE_CONFIG_PROVIDER"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$null$17(Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/scs/ai/sdkcommon/asr/BTCLocaleInfo;->getDefaultSpeaker()Lcom/samsung/android/scs/ai/sdkcommon/tts/TtsSpeakerInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$null$5(Ljava/util/Locale;)Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->createLocaleInfo(Ljava/util/Locale;)Lcom/samsung/android/scs/ai/sdkcommon/asr/LocaleInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$0(Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$1(Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$2(Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->getSupportedLocalesFromRes(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$getSupportedBTCLocaleInfosFromCP$18(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$static$0(Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$getSupportedBTCLocaleInfosFromCP$16(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Landroid/os/Bundle;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$getSupportedLocaleInfos$6(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$static$2(Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$getSupportedServerLists$20(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static setServerType(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;)Z
    .locals 1
    .param p1    # Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/asr/Repository;->settings:Lcom/samsung/android/sdk/scs/ai/asr/Repository;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/Repository;->setServerType(Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerFeature;Lcom/samsung/android/scs/ai/sdkcommon/asr/ServerType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic t(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$getSupportedLocalesFromCP$15(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/ContentResolver;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$callContentProvider$19(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$getSupportedServerInfos$9(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$getSupportedLocalesFromCP$14(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->lambda$getSupportedServerLists$21(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->errorCode:I

    return v0
.end method

.method public getStoreLinkAction()Landroid/content/Intent;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->storeLinkIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getTargetResourcePackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->targetPackage:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->isAvailable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Availability{isAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->isAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", storeLinkIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->storeLinkIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
