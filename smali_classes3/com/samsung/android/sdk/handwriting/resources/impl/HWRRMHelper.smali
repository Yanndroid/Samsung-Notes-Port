.class public Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AVAILABLE_LANGUAGES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "HWRRMHelper"

.field private static mMultiDB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEngineVersion:Ljava/lang/String;

.field private mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

.field private mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;


# direct methods
.method public static constructor <clinit>()V
    .locals 66

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "en_US"

    const-string v2, "en_GB"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "ko_KR"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "ko_KR_NoHanJa"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "ja_JP"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "zh_CN"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "zh_HK"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "zh_TW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mMultiDB:Ljava/util/Map;

    const-string v1, "af_ZA"

    const-string v2, "ar"

    const-string v3, "az_AZ"

    const-string v4, "be_BY"

    const-string v5, "bg_BG"

    const-string v6, "ca_ES"

    const-string v7, "cs_CZ"

    const-string v8, "da_DK"

    const-string v9, "de_AT"

    const-string v10, "de_DE"

    const-string v11, "el_GR"

    const-string v12, "en_AU"

    const-string v13, "en_CA"

    const-string v14, "en_GB"

    const-string v15, "en_US"

    const-string v16, "es_ES"

    const-string v17, "es_MX"

    const-string v18, "es_US"

    const-string v19, "et_EE"

    const-string v20, "eu_ES"

    const-string v21, "fa_IR"

    const-string v22, "fi_FI"

    const-string v23, "fr_CA"

    const-string v24, "fr_FR"

    const-string v25, "ga_IE"

    const-string v26, "gl_ES"

    const-string v27, "he_IL"

    const-string v28, "hi_IN"

    const-string v29, "hr_HR"

    const-string v30, "hu_HU"

    const-string v31, "hy_AM"

    const-string v32, "id_ID"

    const-string v33, "is_IS"

    const-string v34, "it_IT"

    const-string v35, "ja_JP"

    const-string v36, "ka_GE"

    const-string v37, "kk_KZ"

    const-string v38, "ko_KR"

    const-string v39, "lt_LT"

    const-string v40, "lv_LV"

    const-string v41, "mk_MK"

    const-string v42, "mn_MN"

    const-string v43, "mr_IN"

    const-string v44, "ms_MY"

    const-string v45, "nb_NO"

    const-string v46, "nl_BE"

    const-string v47, "nl_NL"

    const-string v48, "pl_PL"

    const-string v49, "pt_BR"

    const-string v50, "pt_PT"

    const-string v51, "ro_RO"

    const-string v52, "ru_RU"

    const-string/jumbo v53, "sk_SK"

    const-string/jumbo v54, "sl_SI"

    const-string/jumbo v55, "sq_AL"

    const-string/jumbo v56, "sr_RS"

    const-string/jumbo v57, "sv_SE"

    const-string/jumbo v58, "th_TH"

    const-string/jumbo v59, "tr_TR"

    const-string/jumbo v60, "uk_UA"

    const-string/jumbo v61, "ur_PK"

    const-string/jumbo v62, "vi_VN"

    const-string/jumbo v63, "zh_CN"

    const-string/jumbo v64, "zh_HK"

    const-string/jumbo v65, "zh_TW"

    filled-new-array/range {v1 .. v65}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->AVAILABLE_LANGUAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mEngineVersion:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    return-void
.end method

.method private declared-synchronized closeContentProviderClient(Landroid/content/ContentProviderClient;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string v1, "Close ContentProviderClient"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p1, "[closeContentProviderClient] content provider client is null!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->release()Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getContentProviderClient()Landroid/content/ContentProviderClient;
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string v1, "Get ContentProviderClient"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "[getContentProviderClient] content resolver is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    const-string v3, "com.samsung.android.sdk.handwriting.resourcemanager"

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "[getContentProviderClient] content provider client is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized makeMapForLanguages(Landroid/database/Cursor;Ljava/util/Map;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "lang"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    const-string/jumbo v2, "version"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mEngineVersion:Ljava/lang/String;

    :cond_0
    const-string v2, "preloaded"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "latest"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    const-string/jumbo v2, "true"

    goto :goto_1

    :cond_1
    const-string v2, "false"

    :goto_1
    invoke-direct {v4, v0, v1, v2, v3}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string p3, "There are no languages in available list!"

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->AVAILABLE_LANGUAGES:[Ljava/lang/String;

    array-length p3, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p3, :cond_3

    aget-object v1, p1, v0

    new-instance v2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;

    new-instance v3, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    const-string v4, ""

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;-><init>(Ljava/lang/String;)V

    const-string v4, "false"

    const-string/jumbo v5, "true"

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized awakeContentProvider()Z
    .locals 9

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->getContentProviderClient()Landroid/content/ContentProviderClient;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string v1, "[awakeContentProvider] client is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v7

    :cond_0
    :try_start_1
    sget-object v8, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string v0, "[awakeContentProvider] query to awake!"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerContract$Downloading;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "[awakeContentProvider] cursor is null!"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v7

    :cond_1
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[awakeContentProvider] cursor count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cp process is awakened!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_5
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v7

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isContentProviderAvailable()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->getContentProviderClient()Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryToGetAvailableList()Z
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->getContentProviderClient()Landroid/content/ContentProviderClient;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string v1, "[queryToGetAvailableList] client is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v7

    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerContract$Langs;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string v1, "[queryToGetAvailableList] cursor is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v7

    :cond_1
    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->makeMapForLanguages(Landroid/database/Cursor;Ljava/util/Map;Z)V

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    if-nez v2, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string v2, "[queryToGetAvailableList] mLanguagePackListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    goto :goto_0

    :cond_2
    invoke-interface {v2, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;->onUpdateAvailableLanguageList(Ljava/util/Map;)Z

    move-result v1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v7

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryToGetDownloadingLangList()Z
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->getContentProviderClient()Landroid/content/ContentProviderClient;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string v1, "[queryToGetDownloadingLangList] client is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v7

    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerContract$Downloading;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string v1, "[queryToGetDownloadingLangList] cursor is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v7

    :cond_1
    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->makeMapForLanguages(Landroid/database/Cursor;Ljava/util/Map;Z)V

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    if-nez v2, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string v2, "[queryToGetDownloadingLangList] mLanguagePackListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    goto :goto_0

    :cond_2
    invoke-interface {v2, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;->onUpdateDownloadingLanguageList(Ljava/util/Map;)Z

    move-result v1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v7

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryToGetInstalledLangList()Z
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->getContentProviderClient()Landroid/content/ContentProviderClient;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string v1, "[queryToGetInstalledLangList] client is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v7

    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerContract$Updates;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string v1, "[queryToGetInstalledLangList] cursor is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v7

    :cond_1
    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1, v7}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->makeMapForLanguages(Landroid/database/Cursor;Ljava/util/Map;Z)V

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    if-nez v2, :cond_2

    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string v2, "[queryToGetInstalledLangList] mLanguagePackListener is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v7

    goto :goto_0

    :cond_2
    invoke-interface {v2, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;->onUpdateInstalledLanguageList(Ljava/util/Map;)Z

    move-result v1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->closeContentProviderClient(Landroid/content/ContentProviderClient;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v7

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnLanguagePackListener(Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    return-void
.end method

.method public declared-synchronized updateResourceList()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->TAG:Ljava/lang/String;

    const-string v1, "mRmLauncher is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v1, "resList"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->launchUpdateByIntent(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
