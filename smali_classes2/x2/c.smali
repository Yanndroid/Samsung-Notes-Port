.class public Lx2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(Ljava/lang/String;)V
    .locals 2

    const-string v0, "AccountGuidSDocx"

    const-string v1, "AccountGuidKeySDocx"

    invoke-static {v0, v1, p0}, Lc3/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static B(Ljava/lang/String;)V
    .locals 2

    const-string v0, "AppVersionSDocx"

    const-string v1, "AppVersionKeySDocx"

    invoke-static {v0, v1, p0}, Lc3/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static C(Ljava/lang/String;)V
    .locals 2

    const-string v0, "sync_v2_pref"

    const-string v1, "folderLastChangePoint"

    invoke-static {v0, v1, p0}, Lc3/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static D(J)V
    .locals 2

    const-string v0, "sync_v2_pref"

    const-string v1, "folderLastRootServerTimestamp"

    invoke-static {v0, v1, p0, p1}, Lc3/a;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static E(Z)V
    .locals 2

    const-string v0, "sync_v2_pref"

    const-string v1, "repairOldNoteAfterAppUpdate"

    invoke-static {v0, v1, p0}, Lc3/a;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static F(Z)V
    .locals 2

    const-string v0, "sync_v2_pref"

    const-string v1, "repairSharedNoteAfterAppUpdate"

    invoke-static {v0, v1, p0}, Lc3/a;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static G(Z)V
    .locals 2

    const-string v0, "sync_v2_pref"

    const-string v1, "repairTrashedFolderAfterAppUpdate"

    invoke-static {v0, v1, p0}, Lc3/a;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static H(Z)V
    .locals 2

    const-string v0, "sync_v2_pref"

    const-string v1, "repairTrashedNoteAfterAppUpdate"

    invoke-static {v0, v1, p0}, Lc3/a;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static I(Ljava/lang/String;)V
    .locals 2

    const-string v0, "sync_v2_pref"

    const-string v1, "lastChangePoint"

    invoke-static {v0, v1, p0}, Lc3/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "SyncControlCorruptedNote"

    invoke-static {v0, p0, p1, p2}, Lc3/a;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static b(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "SyncControlExceedObjectNote"

    invoke-static {v0, p0, p1, p2}, Lc3/a;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static c(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "SyncControlInvalidDataSizeNote"

    invoke-static {v0, p0, p1, p2}, Lc3/a;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static d(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "SyncControlInvalidFileHashNote"

    invoke-static {v0, p0, p1, p2}, Lc3/a;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static e(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "SyncControlOutOfMemoryNote"

    invoke-static {v0, p0, p1, p2}, Lc3/a;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static f(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "SyncControlResourceLackingNote"

    invoke-static {v0, p0, p1, p2}, Lc3/a;->h(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 3

    const-string v0, "AccountGuidSDocx"

    const-string v1, "AccountGuidKeySDocx"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 3

    const-string v0, "AppVersionSDocx"

    const-string v1, "AppVersionKeySDocx"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)J
    .locals 3

    const-string v0, "SyncControlCorruptedNote"

    const-wide/16 v1, 0x0

    invoke-static {v0, p0, v1, v2}, Lc3/a;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static j(Ljava/lang/String;)J
    .locals 3

    const-string v0, "SyncControlExceedObjectNote"

    const-wide/16 v1, 0x0

    invoke-static {v0, p0, v1, v2}, Lc3/a;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static k()Ljava/lang/String;
    .locals 3

    const-string v0, "sync_v2_pref"

    const-string v1, "folderLastChangePoint"

    const-string v2, "eyJ2ZXJzaW9uIjowLCJlbmNyeXB0ZWRHdWlkIjoiIiwicmVxdWVzdFRpbWVTdGFtcCI6MCwibW9kaWZpZWRUaW1lIjowLCJhcHBWZXJzaW9uIjoiMCIsInNka1ZlcnNpb24iOiIwIiwicHVycG9zZSI6IklOSVRJQUwiLCJ0eXBlIjoiRk9MREVSIn0="

    invoke-static {v0, v1, v2}, Lc3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(Ljava/lang/String;)J
    .locals 3

    const-string v0, "SyncControlInvalidDataSizeNote"

    const-wide/16 v1, 0x0

    invoke-static {v0, p0, v1, v2}, Lc3/a;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static m(Ljava/lang/String;)J
    .locals 3

    const-string v0, "SyncControlInvalidFileHashNote"

    const-wide/16 v1, 0x0

    invoke-static {v0, p0, v1, v2}, Lc3/a;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static n(Ljava/lang/String;)J
    .locals 3

    const-string v0, "SyncControlOutOfMemoryNote"

    const-wide/16 v1, 0x0

    invoke-static {v0, p0, v1, v2}, Lc3/a;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static o()Z
    .locals 3

    const-string v0, "sync_v2_pref"

    const-string v1, "repairOldNoteAfterAppUpdate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static p()Z
    .locals 3

    const-string v0, "sync_v2_pref"

    const-string v1, "repairSharedNoteAfterAppUpdate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static q()Z
    .locals 3

    const-string v0, "sync_v2_pref"

    const-string v1, "repairTrashedFolderAfterAppUpdate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static r()Z
    .locals 3

    const-string v0, "sync_v2_pref"

    const-string v1, "repairTrashedNoteAfterAppUpdate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static s(Ljava/lang/String;)J
    .locals 3

    const-string v0, "SyncControlResourceLackingNote"

    const-wide/16 v1, 0x0

    invoke-static {v0, p0, v1, v2}, Lc3/a;->c(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static t()Ljava/lang/String;
    .locals 3

    const-string v0, "sync_v2_pref"

    const-string v1, "lastChangePoint"

    const-string v2, "eyJ2ZXJzaW9uIjowLCJlbmNyeXB0ZWRHdWlkIjoiIiwicmVxdWVzdFRpbWVTdGFtcCI6MCwibW9kaWZpZWRUaW1lIjowLCJhcHBWZXJzaW9uIjoiMCIsInNka1ZlcnNpb24iOiIwIiwicHVycG9zZSI6IklOSVRJQUwiLCJ0eXBlIjoiTk9URSJ9"

    invoke-static {v0, v1, v2}, Lc3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static u(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SyncControlCorruptedNote"

    invoke-static {v0, p0}, Lc3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SyncControlExceedObjectNote"

    invoke-static {v0, p0}, Lc3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SyncControlInvalidDataSizeNote"

    invoke-static {v0, p0}, Lc3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static x(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SyncControlInvalidFileHashNote"

    invoke-static {v0, p0}, Lc3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static y(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SyncControlOutOfMemoryNote"

    invoke-static {v0, p0}, Lc3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static z(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SyncControlResourceLackingNote"

    invoke-static {v0, p0}, Lc3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
