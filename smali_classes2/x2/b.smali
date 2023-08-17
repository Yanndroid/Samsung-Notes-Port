.class public Lx2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Z
    .locals 3

    const-string v0, "lastConfirmState"

    const-string v1, "lastConfirmStateKey"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b()Z
    .locals 3

    const-string v0, "checkPassword"

    const-string v1, "checkpasswordkey"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c()J
    .locals 4

    const-string v0, "serverPassword"

    const-string v1, "serverPasswordKey"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lc3/a;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d()J
    .locals 4

    const-string v0, "SyncSuccessTime"

    const-string v1, "SyncSuccessTimeKey"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lc3/a;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static e()Z
    .locals 3

    const-string v0, "SyncService"

    const-string v1, "SyncCompletedStatus"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f(Z)V
    .locals 2

    const-string v0, "lastConfirmState"

    const-string v1, "lastConfirmStateKey"

    invoke-static {v0, v1, p0}, Lc3/a;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static g(Z)V
    .locals 2

    const-string v0, "SyncService"

    const-string v1, "SyncCompletedStatus"

    invoke-static {v0, v1, p0}, Lc3/a;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static h(J)V
    .locals 2

    const-string v0, "serverPassword"

    const-string v1, "serverPasswordKey"

    invoke-static {v0, v1, p0, p1}, Lc3/a;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static i(J)V
    .locals 2

    const-string v0, "SyncSuccessTime"

    const-string v1, "SyncSuccessTimeKey"

    invoke-static {v0, v1, p0, p1}, Lc3/a;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
