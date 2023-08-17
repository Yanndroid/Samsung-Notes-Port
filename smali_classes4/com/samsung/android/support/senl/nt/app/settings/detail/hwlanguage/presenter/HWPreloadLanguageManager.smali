.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ENGINE_DB_DIR:[Ljava/lang/String;

.field private static final JAPAN_LOCALE_NAME:Ljava/lang/String; = "ja_JP"

.field private static final JAPAN_OMRON_LANG:Ljava/lang/String; = "ja_om"

.field private static final PRELOAD_DB_DIR:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "HWPreloadLanguageManager"

.field private static mInstance:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;


# instance fields
.field private final mIsPreloadedLang:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-string v0, "/prism/sipdb/"

    const-string v1, "/product/sipdb/"

    const-string v2, "/odm/sipdb/"

    const-string v3, "/odm/omc/sipdb/"

    const-string v4, "/system/omc/sipdb/"

    const-string v5, "/system/T9DB/"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->PRELOAD_DB_DIR:[Ljava/lang/String;

    const-string v0, "SwiftKey/"

    const-string v1, "Xt9/"

    const-string v2, "SOGOUDB/"

    const-string v3, "Omron/"

    const-string v4, "ja_om/"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->ENGINE_DB_DIR:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->mIsPreloadedLang:Ljava/util/Map;

    return-void
.end method

.method private getCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    :try_start_0
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCountryCodeFromLocale# ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] do not have country code"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HWPreloadLanguageManager"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->mInstance:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->mInstance:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->mInstance:Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getLangCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isEngineHasLanguage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p1, v2

    const-string v4, "ja_om"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "ja_JP"

    :cond_2
    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->getLangCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->getLangCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_6
    return v1
.end method

.method private isPreloadedLangFromLocale(Ljava/lang/String;)Z
    .locals 11

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->PRELOAD_DB_DIR:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    sget-object v5, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->ENGINE_DB_DIR:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_1
    const/4 v8, 0x1

    if-ge v7, v6, :cond_1

    aget-object v9, v5, v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->isEngineHasLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    return v8

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v4, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->isEngineHasLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v8

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method


# virtual methods
.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->mIsPreloadedLang:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public isPreloadedLang(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->mIsPreloadedLang:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->isPreloadedLangFromLocale(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/hwlanguage/presenter/HWPreloadLanguageManager;->mIsPreloadedLang:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
