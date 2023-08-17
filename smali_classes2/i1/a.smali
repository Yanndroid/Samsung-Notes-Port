.class public Li1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 3

    const-string v0, "GRAPH_PREFERENCE"

    const-string v1, "access_token"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lc3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/sync/EncryptUtil;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/EncryptUtil;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/EncryptUtil;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    const-string v0, "GRAPH_PREFERENCE"

    const-string v1, "account_id"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lc3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Z
    .locals 3

    const-string v0, "GRAPH_PREFERENCE"

    const-string v1, "enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 3

    const-string v0, "GRAPH_PREFERENCE"

    const-string v1, "key_is_skipped_feed_sync_exist"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 3

    const-string v0, "GRAPH_PREFERENCE"

    const-string v1, "key_is_request_login"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 3

    const-string v0, "GRAPH_PREFERENCE"

    const-string v1, "sign_in"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 3

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "key_sync_while_roaming"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static h()J
    .locals 4

    const-string v0, "GRAPH_PREFERENCE"

    const-string v1, "synced_time"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lc3/a;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static i()Ljava/lang/String;
    .locals 3

    const-string v0, "GRAPH_PREFERENCE"

    const-string/jumbo v1, "user_email"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lc3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/sync/EncryptUtil;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/EncryptUtil;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/sync/EncryptUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "GRAPH_PREFERENCE"

    const-string v1, "access_token"

    invoke-static {v0, v1, p0}, Lc3/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static k(Ljava/lang/String;)V
    .locals 2

    const-string v0, "GRAPH_PREFERENCE"

    const-string v1, "account_id"

    invoke-static {v0, v1, p0}, Lc3/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static l(Z)V
    .locals 2

    const-string v0, "GRAPH_PREFERENCE"

    const-string v1, "enable"

    invoke-static {v0, v1, p0}, Lc3/a;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static m(Z)V
    .locals 2

    const-string v0, "GRAPH_PREFERENCE"

    const-string v1, "key_is_skipped_feed_sync_exist"

    invoke-static {v0, v1, p0}, Lc3/a;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static n(Z)V
    .locals 2

    const-string v0, "GRAPH_PREFERENCE"

    const-string v1, "key_is_request_login"

    invoke-static {v0, v1, p0}, Lc3/a;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static o(J)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr p0, v2

    add-long/2addr p0, v0

    const-string v0, "GRAPH_PREFERENCE"

    const-string v1, "key_retry_after_time"

    invoke-static {v0, v1, p0, p1}, Lc3/a;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static p(Z)V
    .locals 2

    const-string v0, "GRAPH_PREFERENCE"

    const-string v1, "sign_in"

    invoke-static {v0, v1, p0}, Lc3/a;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static q(Z)V
    .locals 2

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "key_sync_while_roaming"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static r(J)V
    .locals 2

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "key_last_sync_time"

    invoke-virtual {v0, v1, p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putLong(Ljava/lang/String;J)V

    const-string v0, "GRAPH_PREFERENCE"

    const-string v1, "synced_time"

    invoke-static {v0, v1, p0, p1}, Lc3/a;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static s(Ljava/lang/String;)V
    .locals 2

    const-string v0, "GRAPH_PREFERENCE"

    const-string/jumbo v1, "user_email"

    invoke-static {v0, v1, p0}, Lc3/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static t(Ljava/lang/String;)V
    .locals 2

    const-string v0, "GRAPH_PREFERENCE"

    const-string/jumbo v1, "user_name"

    invoke-static {v0, v1, p0}, Lc3/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
