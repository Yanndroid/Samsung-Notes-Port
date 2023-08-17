.class public Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;
.super Lcom/samsung/android/settings/search/provider/SecSearchIndexablesProvider;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsSearchProvider"

.field private static final TOP_LEVEL_SETTINGS_MAIN_SCREEN:Ljava/lang/String; = "top_level_settings_main_screen"

.field private static final VERSION_CODE_R:I = 0x1e


# instance fields
.field private final mSettingsImportScreenMenus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLockScreenMenus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLookWhenSavedScreenMenus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsMainScreenMenus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/SecSearchIndexablesProvider;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsImportScreenMenus:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsLookWhenSavedScreenMenus:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsLockScreenMenus:Ljava/util/Map;

    return-void
.end method

.method private addSettingImportMenu(Landroid/database/MatrixCursor;)V
    .locals 6
    .param p1    # Landroid/database/MatrixCursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsImportScreenMenus:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_import_notes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-class v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->addSettingMenus(Landroid/database/MatrixCursor;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addSettingLockMenu(Landroid/database/MatrixCursor;)V
    .locals 6
    .param p1    # Landroid/database/MatrixCursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsLockScreenMenus:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_lock_menu_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-class v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->addSettingMenus(Landroid/database/MatrixCursor;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addSettingLookWhenSavedMenu(Landroid/database/MatrixCursor;)V
    .locals 6
    .param p1    # Landroid/database/MatrixCursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsLookWhenSavedScreenMenus:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_look_when_saved:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-class v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLookWhenSavedPrefFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->addSettingMenus(Landroid/database/MatrixCursor;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addSettingMainMenu(Landroid/database/MatrixCursor;)V
    .locals 11
    .param p1    # Landroid/database/MatrixCursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/samsung/android/support/senl/nt/app/settings/SettingsMainActivity;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getSamsungNotesSettingTitleRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getSamsungNotesSettingTitleRes()I

    move-result v5

    sget v6, Lcom/samsung/android/support/senl/nt/app/R$drawable;->ic_notes:I

    const-class v2, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x0

    new-array v10, v2, [Ljava/lang/String;

    const-string v4, "top_level_settings_main_screen"

    move-object v3, p0

    move-object v7, v1

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getIndexableTuple(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    const-class v2, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v4, p1

    move-object v6, v1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->addSettingMenus(Landroid/database/MatrixCursor;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addSettingMenus(Landroid/database/MatrixCursor;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1    # Landroid/database/MatrixCursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/MatrixCursor;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v8, v0

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getIndexableTuple(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private varargs getIndexableTuple(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIndexableTuple# keyValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsSearchProvider"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/search/provider/SecSearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xc

    aput-object p1, v0, v1

    const-string p1, " ,"

    invoke-static {p1, p7}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->arrayJoin(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p7, 0x5

    aput-object p1, v0, p7

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p7, 0x1e

    if-le p1, p7, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x6

    aput-object p4, v0, p1

    const/4 p1, 0x7

    aput-object p5, v0, p1

    const/16 p1, 0x9

    const-string p2, "android.intent.action.VIEW"

    aput-object p2, v0, p1

    const/16 p1, 0xa

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    const/16 p1, 0xb

    aput-object p6, v0, p1

    if-lez p3, :cond_1

    const/16 p1, 0x8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    :cond_1
    return-object v0
.end method

.method private varargs getIndexableTuple(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;
    .locals 8
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getIndexableTuple(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNonIndexableTuple# keyValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsSearchProvider"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/search/provider/SecSearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0
.end method

.method private getSiteMapPairTuple(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSiteMapPairTuple# parent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " child: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsSearchProvider"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/search/provider/SecSearchIndexablesContract;->SITE_MAP_COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    return-object v0
.end method

.method private initImportScreenMenus()V
    .locals 3

    const-string v0, "SettingsSearchProvider"

    const-string v1, "initImportScreenMenus# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsImportScreenMenus:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getImportFromDeviceTitleRes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_import_notes_from_phone"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsImportScreenMenus:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getImportFromDeviceTitleRes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_import_snote_from_phone"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsImportScreenMenus:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getImportFromSamsungAccountTitleRes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_import_snote_from_samsung_account"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsImportScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_import_google_drive:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_import_snote_from_google_drive"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsImportScreenMenus:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getImportFromDeviceTitleRes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_import_memos_from_phone"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsImportScreenMenus:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getImportFromSamsungAccountTitleRes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_import_memos_from_samsung_account"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsImportScreenMenus:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getImportFromSamsungAccountTitleRes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_import_scrapbooks_from_samsung_account"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initLockScreenMenus()V
    .locals 4

    const-string v0, "SettingsSearchProvider"

    const-string v1, "initLockScreenMenus# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsLockScreenMenus:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getLockNotesSetPasswordTitleRes(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "settings_lock_create_change_password"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;-><init>()V

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isIrisDeviceSupported(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsLockScreenMenus:Ljava/util/Map;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_iris:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "settings_lock_biometrics_iris"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;-><init>()V

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isFingerprintDeviceSupported(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsLockScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_fingerprint:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_lock_biometrics_fingerprints"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private initLookWhenSavedScreenMenus()V
    .locals 3

    const-string v0, "SettingsSearchProvider"

    const-string v1, "initLookWhenSavedScreenMenus# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsLookWhenSavedScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_look_of_saved_notes_same_as_screen_off_memo:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_pen_color_for_saved_notes_same_as_screen_off_memo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsLookWhenSavedScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_look_of_saved_notes_pen_color_on_white_bg:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_pen_color_for_saved_notes_pen_color_on_white_bg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsLookWhenSavedScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_look_of_saved_notes_black_color_on_white_bg:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_pen_color_for_saved_notes_black_color_on_white_bg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initMainScreenMenus()V
    .locals 3

    const-string v0, "SettingsSearchProvider"

    const-string v1, "initMainScreenMenus# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getSamsungCloudSyncMenuTitleRes(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_samsung_cloud_sync"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_sync_to_ms:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_sync_to_microsoft"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_coedit_note_sync_type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_coedit_note_sync_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_look_when_saved:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_pen_color_for_saved_notes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_style_of_new_notes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_style_of_new_notes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_lock_menu_name:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_lock_notes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_convert_your_notes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_convert_your_notes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_import_notes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_import_notes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_auto_save_notes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_auto_save_notes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_show_links_in_notes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_show_links_in_notes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_show_web_previews:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_show_web_previews"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_clipping_options:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_clipping_options"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_action_icons:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_action_icons"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_hide_scroll_bar_when_editing:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_hide_scroll_bar_when_editing"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_hide_navigation_bar_when_writing:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_hide_navigation_bar_when_writing"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_block_back_key_while_editing:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_block_back_key_while_editing"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_use_phone_as_toolbar:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_show_option_to_move_pen_tools"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_handwriting_recognition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_handwriting_recognition_language"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_privacy_notice:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_privacy_notice"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_permissions:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_permissions"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getAboutSamsungNotesTitleRes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_about_notes"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->mSettingsMainScreenMenus:Ljava/util/Map;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_contact_us:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "settings_contact_us"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateAdvancedMenuNonIndexableKeys(Landroid/database/MatrixCursor;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isClippingOptionsSupported()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isClippingOptionsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "settings_clipping_options"

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isActionIconsSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "settings_action_icons"

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isHideScrollBarWhenEditingSupported()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "settings_hide_scroll_bar_when_editing"

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isHideNavigationBarWhenWritingSupported()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "settings_hide_navigation_bar_when_writing"

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_3
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isHandWritingRecognitionLanguageSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "settings_handwriting_recognition_language"

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_4
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isUsePhoneAsToolbarSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isUsePhoneAsToolbarVisible(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const-string v0, "settings_show_option_to_move_pen_tools"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method private updateContactUsMenuNonIndexableKeys(Landroid/database/MatrixCursor;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isContactUsSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "settings_contact_us"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateGeneralMenuNonIndexableKeys(Landroid/database/MatrixCursor;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isLockNotesSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "settings_lock_notes"

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isLockNotesAccessEnabled(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "settings_lock_biometrics_fingerprints"

    const-string v3, "settings_lock_biometrics_iris"

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;-><init>()V

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isLockNotesUsingIrisSupported(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/iris/IrisApi;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;-><init>()V

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isLockNotesUsingFingerprintSupported(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/biometrics/fingerprint/FingerprintApi;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v1, "settings_lock_create_change_password"

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_3
    :goto_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isConvertYourNoteVisible(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "settings_convert_your_notes"

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_4
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isImportDataSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "settings_import_notes"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private updateImportMenuNonIndexableKeys(Landroid/database/MatrixCursor;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isImportNotesSupported()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "settings_import_notes_from_phone"

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isImportSNotesFromGoogleDriveSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "settings_import_snote_from_google_drive"

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isImportMemosFromPhoneSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "settings_import_memos_from_phone"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private updatePermissionsMenuNonIndexableKeys(Landroid/database/MatrixCursor;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isPermissionsSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "settings_permissions"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateScreenOffMemoMenuNonIndexableKeys(Landroid/database/MatrixCursor;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isLookWhenSavedSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isLookWhenSavedVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "settings_pen_color_for_saved_notes"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const-string v0, "settings_pen_color_for_saved_notes_same_as_screen_off_memo"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const-string v0, "settings_pen_color_for_saved_notes_pen_color_on_white_bg"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const-string v0, "settings_pen_color_for_saved_notes_black_color_on_white_bg"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private updateSyncMenuNonIndexableKeys(Landroid/database/MatrixCursor;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isSamsungCloudSyncSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "settings_samsung_cloud_sync"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isMicrosoftSyncSupported()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "settings_sync_to_microsoft"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isSharedNotesSyncSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "settings_coedit_note_sync_type"

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getNonIndexableTuple(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 2

    const-string v0, "SettingsSearchProvider"

    const-string v1, "onCreate# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->initMainScreenMenus()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->initImportScreenMenus()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->initLookWhenSavedScreenMenus()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->initLockScreenMenus()V

    const/4 v0, 0x0

    return v0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryNonIndexableKeys# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsSearchProvider"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/samsung/android/settings/search/provider/SecSearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->updateSyncMenuNonIndexableKeys(Landroid/database/MatrixCursor;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->updateScreenOffMemoMenuNonIndexableKeys(Landroid/database/MatrixCursor;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->updateGeneralMenuNonIndexableKeys(Landroid/database/MatrixCursor;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->updateAdvancedMenuNonIndexableKeys(Landroid/database/MatrixCursor;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->updatePermissionsMenuNonIndexableKeys(Landroid/database/MatrixCursor;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->updateContactUsMenuNonIndexableKeys(Landroid/database/MatrixCursor;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->updateImportMenuNonIndexableKeys(Landroid/database/MatrixCursor;)V

    return-object p1
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryRawData# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsSearchProvider"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/samsung/android/settings/search/provider/SecSearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->addSettingMainMenu(Landroid/database/MatrixCursor;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->addSettingImportMenu(Landroid/database/MatrixCursor;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->addSettingLookWhenSavedMenu(Landroid/database/MatrixCursor;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->addSettingLockMenu(Landroid/database/MatrixCursor;)V

    return-object p1
.end method

.method public querySiteMapPairs()Landroid/database/Cursor;
    .locals 6

    const-string v0, "SettingsSearchProvider"

    const-string v1, "querySiteMapPairs# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/samsung/android/settings/search/provider/SecSearchIndexablesContract;->SITE_MAP_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getSamsungNotesSettingTitleRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_import_notes:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getSiteMapPairTuple(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const-class v2, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLookWhenSavedPrefFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_look_when_saved:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getSiteMapPairTuple(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const-class v2, Lcom/samsung/android/support/senl/nt/app/settings/main/SettingsMainFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsLockPrefFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$string;->settings_lock_menu_name:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/samsung/android/support/senl/nt/app/settings/provider/SettingsSearchProvider;->getSiteMapPairTuple(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryXmlResources# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsSearchProvider"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public secQueryGetFingerprint()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "SettingsSearchProvider"

    const-string v1, "secQueryGetFingerprint# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getVersionInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
