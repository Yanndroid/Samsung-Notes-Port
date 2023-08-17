.class public Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListPreferenceHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListPreferenceHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListPreferenceHelper;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListPreferenceHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListPreferenceHelper;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListPreferenceHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListPreferenceHelper;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListPreferenceHelper;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListPreferenceHelper;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListPreferenceHelper;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListPreferenceHelper;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/hashtag/HashTagListPreferenceHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getSelectedTags()Ljava/util/Set;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "MemoFragment"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "key_selected_tags"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public setSelectedTags(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :cond_0
    const-string v0, "MemoFragment"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "key_selected_tags"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
