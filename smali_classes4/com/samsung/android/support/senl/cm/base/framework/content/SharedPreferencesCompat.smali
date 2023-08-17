.class public Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateTestImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateAndroidImpl;,
        Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;
    }
.end annotation


# static fields
.field public static final MODE_ANDROID:I = 0x0

.field public static final MODE_TEST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SharedPreferencesCompat"

.field private static mMode:I

.field private static sApplicatoinContext:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static sTestInstance:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;

    return-void
.end method

.method public static bridge synthetic a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->sApplicatoinContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized clearInstance()V
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->sTestInstance:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mMode:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->sApplicatoinContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateAndroidImpl;

    sget-object v3, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->sApplicatoinContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateAndroidImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->sTestInstance:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    if-nez v1, :cond_1

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateTestImpl;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateTestImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/content/a;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;)V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->sTestInstance:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    :cond_1
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->sTestInstance:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mMode:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->sApplicatoinContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateAndroidImpl;

    sget-object v3, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->sApplicatoinContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateAndroidImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    sget-object p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->sTestInstance:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    if-nez p0, :cond_1

    new-instance p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateTestImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateTestImpl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/content/a;)V

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;)V

    sput-object p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->sTestInstance:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    :cond_1
    sget-object p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->sTestInstance:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->sApplicatoinContext:Landroid/content/Context;

    return-void
.end method

.method public static setMode(I)V
    .locals 2

    sput p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mMode:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const-string p0, "MODE_ANDROID"

    goto :goto_0

    :cond_0
    const-string p0, "MODE_TEST"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SharedPreferencesCompat"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getColor(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;->getColor(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;->putFloat(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat$SharedPreferencesDelegateImpl;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
