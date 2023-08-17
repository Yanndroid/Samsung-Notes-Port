.class public Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName$MakeInstanceThread;
    }
.end annotation


# static fields
.field private static final BUILDED_PREFS_NAME:Ljava/lang/String; = "builded_prefs_screen_off_memo_name"

.field private static final IS_BUILDED:Ljava/lang/String; = "is_screen_off_memo_builded"

.field private static final RESERVED_PREFS_NAME:Ljava/lang/String; = "reserved_prefs_screen_off_memo_name"

.field private static final TAG:Ljava/lang/String; = "ReservedFolderName"

.field public static isRunningReservedFolder:Z = false

.field private static mReservedFolder:Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;

.field private static mReservedStringList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ReservedFolderName"

    const-string v1, "ReservedFolderName start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->isRunningReservedFolder:Z

    const-class v1, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->mReservedStringList:Ljava/util/List;

    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v2

    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v2, v6

    invoke-virtual {v3, v7}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/support/senl/nt/app/R$string;->string_screen_off_memo:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->mReservedStringList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->mReservedStringList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v8, "reserved_prefs_screen_off_memo_name"

    invoke-static {v8}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v8, v7, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "reserved_prefs_screen_off_memo_name"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "builded_prefs_screen_off_memo_name"

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p1

    const-string v1, "is_screen_off_memo_builded"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    sput-boolean v5, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->isRunningReservedFolder:Z

    const-string p1, "ReservedFolderName"

    const-string v0, "ReservedFolderName end"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/app/main/common/data/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic a()Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->mReservedFolder:Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;

    return-object v0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->mReservedFolder:Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;

    return-void
.end method

.method private static buildReservedFolder(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "builded_prefs_screen_off_memo_name"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "is_screen_off_memo_builded"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->isRunningReservedFolder:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName$MakeInstanceThread;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName$MakeInstanceThread;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    const-string v1, "ReservedFolderName"

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-boolean p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->isRunningReservedFolder:Z

    return p0
.end method

.method public static isReservedFolderForDataSet(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->buildReservedFolder(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "ReservedFolderName"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReservedFolderForDataSet# folderName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isBuilding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->setReservedString(Landroid/content/Context;)V

    const-string p0, "ReservedFolderName"

    const-string v0, "isReservedFolderForDataSet# folderName : end"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-class p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->mReservedStringList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static isReservedFolderForLayoutSet(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->buildReservedFolder(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ReservedFolderName"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isReservedFolderForLayoutSet isBuilding # folderName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "ReservedFolderName"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReservedFolderForLayoutSet# folderName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->setReservedString(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->mReservedStringList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static declared-synchronized setReservedString(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;

    monitor-enter v0

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->mReservedStringList:Ljava/util/List;

    if-nez v1, :cond_1

    if-nez p0, :cond_0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->mReservedStringList:Ljava/util/List;

    const-string v1, "reserved_prefs_screen_off_memo_name"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/main/common/data/ReservedFolderName;->mReservedStringList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
