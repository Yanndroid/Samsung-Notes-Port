.class public Lg2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 3

    const-string v0, "QUOTA_PREFERENCE"

    const-string v1, "quota_eof_status"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lc3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Z
    .locals 3

    const-string v0, "QUOTA_PREFERENCE"

    const-string v1, "quota_new_user_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    const-string v0, "QUOTA_PREFERENCE"

    const-string v1, "quota_od_link_status"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lc3/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Z
    .locals 3

    const-string v0, "QUOTA_PREFERENCE"

    const-string v1, "quota_ui_checked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc3/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "QUOTA_PREFERENCE"

    const-string v1, "quota_eof_status"

    invoke-static {v0, v1, p0}, Lc3/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Z)V
    .locals 2

    const-string v0, "QUOTA_PREFERENCE"

    const-string v1, "quota_new_user_status"

    invoke-static {v0, v1, p0}, Lc3/a;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    const-string v0, "QUOTA_PREFERENCE"

    const-string v1, "quota_od_link_status"

    invoke-static {v0, v1, p0}, Lc3/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static h(Z)V
    .locals 2

    const-string v0, "QUOTA_PREFERENCE"

    const-string v1, "quota_ui_checked"

    invoke-static {v0, v1, p0}, Lc3/a;->f(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
