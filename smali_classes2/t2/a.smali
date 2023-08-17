.class public Lt2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "CheckLockedNotes"

    invoke-static {v0, p0, p1}, Lc3/a;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static b(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "SyncControlOutOfMemoryOldNote"

    invoke-static {v0, p0, p1, p2}, Lc3/a;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    const-string v0, "AccountGuid"

    const-string v1, "AccountGuidKey"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Z
    .locals 3

    const-string v0, "CategoryOrderTime"

    const-string v1, "CategoryOrderDirtyKey"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e()J
    .locals 4

    const-string v0, "CategoryOrderTime"

    const-string v1, "CategoryOrderTimeKey"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lc3/a;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "CheckLockedNotes"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static g()J
    .locals 3

    const-string v0, "CategoryLastSyncTime"

    const-string v1, "CategoryLastSyncTimeKey"

    const-string v2, "1464416139847"

    invoke-static {v0, v1, v2}, Lc3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static h()J
    .locals 3

    const-string v0, "SDocLastSyncTime"

    const-string v1, "SDocLastSyncTimeKey"

    const-string v2, "1464416139847"

    invoke-static {v0, v1, v2}, Lc3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static i()J
    .locals 3

    const-string v0, "TagLastSyncTime"

    const-string v1, "TagLastSyncTimeKey"

    const-string v2, "1464416139847"

    invoke-static {v0, v1, v2}, Lc3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static j()Ljava/lang/String;
    .locals 3

    const-string v0, "UserIdForSync"

    const-string v1, "UserIdForLocalPasswordKey"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k()Z
    .locals 3

    const-string v0, "CheckLockedNotes"

    const-string v1, "CheckLockedNotesFinishedKey"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static l(Ljava/lang/String;)J
    .locals 3

    const-string v0, "SyncControlOutOfMemoryOldNote"

    const-wide/16 v1, 0x0

    invoke-static {v0, p0, v1, v2}, Lc3/a;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static m()Z
    .locals 3

    const-string v0, "SDocServerPush"

    const-string v1, "SDocServerPushKey"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static n(Ljava/lang/String;)V
    .locals 2

    const-string v0, "AccountGuid"

    const-string v1, "AccountGuidKey"

    invoke-static {v0, v1, p0}, Lc3/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static o(Z)V
    .locals 2

    const-string v0, "CategoryOrderTime"

    const-string v1, "CategoryOrderDirtyKey"

    invoke-static {v0, v1, p0}, Lc3/a;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static p(J)V
    .locals 2

    const-string v0, "CategoryOrderTime"

    const-string v1, "CategoryOrderTimeKey"

    invoke-static {v0, v1, p0, p1}, Lc3/a;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static q(Z)V
    .locals 2

    const-string v0, "SDocServerPush"

    const-string v1, "SDocServerPushKey"

    invoke-static {v0, v1, p0}, Lc3/a;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static r(J)V
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CategoryLastSyncTime"

    const-string v0, "CategoryLastSyncTimeKey"

    invoke-static {p1, v0, p0}, Lc3/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static s(J)V
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SDocLastSyncTime"

    const-string v0, "SDocLastSyncTimeKey"

    invoke-static {p1, v0, p0}, Lc3/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static t(J)V
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TagLastSyncTime"

    const-string v0, "TagLastSyncTimeKey"

    invoke-static {p1, v0, p0}, Lc3/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static u(J)V
    .locals 2

    const-string v0, "LastEraseServerData"

    const-string v1, "LastEraseServerTime"

    invoke-static {v0, v1, p0, p1}, Lc3/a;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static v(Z)V
    .locals 2

    const-string v0, "CheckLockedNotes"

    const-string v1, "CheckLockedNotesFinishedKey"

    invoke-static {v0, v1, p0}, Lc3/a;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
