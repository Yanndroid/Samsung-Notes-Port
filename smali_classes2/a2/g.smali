.class public La2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/g$b;,
        La2/g$a;
    }
.end annotation


# direct methods
.method public static bridge synthetic a(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, La2/g;->d(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(La2/g$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;La2/d$f;Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V
    .locals 0
    .param p4    # La2/d$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->t(La2/g$a;Landroid/content/Context;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->v(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->i(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object p0

    const-string p2, "downloadFile"

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->d(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->u(Lcom/samsung/android/app/notes/sync/network/networkutils/c;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->k()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object p0

    invoke-static {p1, p0}, La2/g;->f(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    return-void
.end method

.method public static c(La2/g$a;Landroid/content/Context;Le1/d;La2/g$b;)V
    .locals 3
    .param p3    # La2/g$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p3, "NT$WDocServiceHelper"

    const-string v0, "downsyncSettings() start"

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/samsungnotes/v1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lh2/b;->b()Lh2/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lh2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SD"

    invoke-virtual {p0, v1}, La2/g$a;->h(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->t(La2/g$a;Landroid/content/Context;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v1

    const-string v2, "downsyncSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->d(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->v(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->l()Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->k()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object v0

    invoke-virtual {p0}, La2/g$a;->a()V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result p0

    const/16 v1, 0xc8

    if-ne p0, v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Le1/d;->a(Ljava/lang/String;)Le1/d;

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, La2/g;->f(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    :goto_0
    const-string p0, "downsyncSettings() finish"

    invoke-static {p3, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(I)Ljava/lang/String;
    .locals 4

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p0, "BA"

    return-object p0

    :cond_0
    and-int/lit8 v0, p0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string p0, "BP"

    return-object p0

    :cond_1
    and-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    const-string v2, "BB"

    if-ne v0, v1, :cond_2

    return-object v2

    :cond_2
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    return-object v2

    :cond_3
    and-int/lit8 v0, p0, 0x40

    const/16 v1, 0x40

    const-string v3, "BU"

    if-ne v0, v1, :cond_4

    return-object v3

    :cond_4
    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_5

    return-object v3

    :cond_5
    and-int/lit16 v0, p0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_6

    return-object v3

    :cond_6
    and-int/lit16 v0, p0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_7

    return-object v3

    :cond_7
    const/16 v0, 0x400

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_8

    return-object v3

    :cond_8
    return-object v2
.end method

.method public static e(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lorg/jsoup/helper/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "NT$WDocServiceHelper"

    const-string v0, "getRCodeFromServerError() : empty errMessage!"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    invoke-static {p0}, La2/g;->l(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, La2/g;->m(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static f(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCommonResponse() status code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NT$WDocServiceHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_b

    const/16 v2, 0x12e

    if-eq v0, v2, :cond_a

    const/16 v2, 0x199

    if-eq v0, v2, :cond_9

    const/16 v2, 0x1ad

    if-eq v0, v2, :cond_8

    const/16 v2, 0x1f4

    if-eq v0, v2, :cond_7

    const/16 v2, 0x1fb

    if-eq v0, v2, :cond_6

    const/16 v2, 0x190

    if-eq v0, v2, :cond_3

    const/16 v2, 0x191

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result p0

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled response : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    const-string p0, "Gateway Timeout"

    goto :goto_0

    :pswitch_1
    const-string v0, "Service Unavailable"

    goto/16 :goto_3

    :pswitch_2
    const-string p0, "Bad Gateway"

    goto :goto_0

    :pswitch_3
    const-string p0, "Method Not Allowed"

    goto :goto_0

    :pswitch_4
    const-string p0, "Not Found"

    :goto_0
    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-static {p1}, Ls0/b;->c(Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    goto/16 :goto_4

    :pswitch_5
    const-string p0, "Forbidden"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La2/g;->j(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/synchronization/managers/a;->a()Lcom/samsung/android/app/notes/sync/synchronization/managers/a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/synchronization/managers/a;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    const-string p0, "Unauthenticated For SC"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La2/g;->k(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    :goto_2
    goto :goto_1

    :cond_2
    invoke-static {}, Lk2/d;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lk2/d;->d(Ljava/lang/String;)V

    const-string p0, "SC Access token is expired"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ls0/c;

    const/16 v0, 0x1fd

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_3
    const-string v0, "Bad request"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La2/g;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La2/g;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object p0

    invoke-virtual {p0}, Lf/a;->x()V

    invoke-static {}, Lk2/d;->e()V

    const-string p0, "Access token is expired"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ls0/c;

    const/16 v0, 0x1fc

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ls0/c;

    const/16 v0, 0x1f9

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_6
    const-string p0, "Storage Insufficient"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ls0/c;

    const/16 v0, 0x137

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->q()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_7
    const-string p0, "Internal Server Error"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lu0/e;

    invoke-direct {p0}, Lu0/e;-><init>()V

    invoke-virtual {p0}, Lu0/a;->c()V

    goto/16 :goto_1

    :cond_8
    const-string v0, "Too Many Requests"

    :goto_3
    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->t()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, La2/g;->g(Landroid/content/Context;J)V

    goto/16 :goto_1

    :cond_9
    const-string p0, "Conflict"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    const-string p0, "URL redirection"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    const-string p0, "Success"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x193
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f6
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Landroid/content/Context;J)V
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-static {p0, v0, v1}, La2/g;->o(Landroid/content/Context;J)V

    return-void
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, La2/g;->e(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x4a40

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4a4a

    if-eq p0, v0, :cond_1

    const v0, 0x18e74

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const-string p0, "NT$WDocServiceHelper"

    const-string v0, "isAccessTokenInvalid() : true"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, La2/g;->e(Ljava/lang/String;)I

    move-result p0

    const v0, 0x1f7e7

    if-ne p0, v0, :cond_0

    const-string p0, "NT$WDocServiceHelper"

    const-string v0, "isAppUpdateNeeded() : SDK_VERSION_NOT_ACCEPTABLE!"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p0}, La2/g;->e(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/synchronization/managers/a;->a()Lcom/samsung/android/app/notes/sync/synchronization/managers/a;

    move-result-object v0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/synchronization/managers/a;->c(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "NT$WDocServiceHelper"

    const-string v0, "isServerBlocked() : [GDPR] server is blocked!"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static k(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, La2/g;->e(Ljava/lang/String;)I

    move-result p0

    const v0, 0x18a88

    if-ne p0, v0, :cond_0

    const-string p0, "NT$WDocServiceHelper"

    const-string v0, "isUnauthenticatedForSC() : true"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static l(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "rcode"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NT$WDocServiceHelper"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static m(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    new-instance v0, Le1/h;

    invoke-direct {v0}, Le1/h;-><init>()V

    invoke-virtual {v0, p0}, Le1/h;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Le1/h;->c()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NT$WDocServiceHelper"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static n(Lx2/e;Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/j;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/samsungnotes/v2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/binaries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/createUploadURLs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lh2/b;->b()Lh2/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lh2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->u(Lx2/e;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->v(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    const-string v1, "createMultiUploadURL"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->d(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->e(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->r()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result v0

    const/16 v1, 0xcf

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lx2/d;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, La2/g;->f(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    new-instance p0, Ls0/c;

    const/16 v0, 0x13b

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static o(Landroid/content/Context;J)V
    .locals 2

    const-string v0, "WDocServiceHelper"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "TimeWithRetryAfter"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static p(La2/g$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->t(La2/g$a;Landroid/content/Context;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->v(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->j(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object p0

    const-string/jumbo p2, "uploadFile"

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->d(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->g(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->u(Lcom/samsung/android/app/notes/sync/network/networkutils/c;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->s()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result p2

    const-string p3, "NT$WDocServiceHelper"

    const/16 p4, 0xc8

    if-ne p2, p4, :cond_0

    const-string/jumbo p0, "uploadFile() : succeed to uploadFile()"

    :goto_0
    invoke-static {p3, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result p2

    const/16 p4, 0xcc

    if-ne p2, p4, :cond_1

    const-string/jumbo p0, "uploadFile() : already file uploaded"

    goto :goto_0

    :cond_1
    invoke-static {p1, p0}, La2/g;->f(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    :goto_1
    const-string/jumbo p0, "uploadFile() finish"

    invoke-static {p3, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static q(La2/g$a;Landroid/content/Context;Le1/k;La2/g$b;)V
    .locals 3
    .param p3    # La2/g$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p3, "NT$WDocServiceHelper"

    const-string/jumbo v0, "upsyncSettings() start"

    invoke-static {p3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/samsungnotes/v1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lh2/b;->b()Lh2/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lh2/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SU"

    invoke-virtual {p0, v1}, La2/g$a;->h(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->t(La2/g$a;Landroid/content/Context;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v1

    const-string/jumbo v2, "upsyncSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->d(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->v(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object v0

    invoke-virtual {p2}, Le1/k;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->e(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/notes/sync/network/networkutils/h$c;->q()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object p2

    invoke-virtual {p0}, La2/g$a;->a()V

    invoke-virtual {p2}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->u()I

    move-result p0

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, La2/g;->f(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    :goto_0
    const-string/jumbo p0, "upsyncSettings() finish"

    invoke-static {p3, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
