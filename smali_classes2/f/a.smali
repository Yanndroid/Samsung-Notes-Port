.class public Lf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static h:Lf/a;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lg/c;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

.field public final f:Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;

.field public final g:Lg/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/a;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/a;->d:Ljava/util/ArrayList;

    new-instance v0, Lf/a$a;

    invoke-direct {v0, p0}, Lf/a$a;-><init>(Lf/a;)V

    iput-object v0, p0, Lf/a;->f:Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;

    new-instance v1, Lf/a$b;

    invoke-direct {v1, p0}, Lf/a$b;-><init>(Lf/a;)V

    iput-object v1, p0, Lf/a;->g:Lg/b;

    iput-object p1, p0, Lf/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->hasSamsungAccountPackage(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;

    iget-object v2, p0, Lf/a;->a:Landroid/content/Context;

    invoke-direct {p1, v2, v0, v1}, Lcom/samsung/android/app/notes/sync/account/samsungdevice/AccountSamsungLocalSDoc;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;Lg/b;)V

    iput-object p1, p0, Lf/a;->b:Lg/c;

    sget-object p1, Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;->LOCAL:Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;

    iget-object v2, p0, Lf/a;->a:Landroid/content/Context;

    invoke-direct {p1, v2, v0, v1}, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;Lg/b;)V

    iput-object p1, p0, Lf/a;->b:Lg/c;

    sget-object p1, Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;->WEB:Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    :goto_0
    iput-object p1, p0, Lf/a;->e:Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    return-void
.end method

.method public static bridge synthetic a(Lf/a;)Lg/c;
    .locals 0

    iget-object p0, p0, Lf/a;->b:Lg/c;

    return-object p0
.end method

.method public static bridge synthetic b(Lf/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lf/a;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic c(Lf/a;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lf/a;->f(Z)V

    return-void
.end method

.method public static declared-synchronized m(Landroid/content/Context;)Lf/a;
    .locals 2

    const-class v0, Lf/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf/a;->h:Lf/a;

    if-nez v1, :cond_0

    new-instance v1, Lf/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lf/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lf/a;->h:Lf/a;

    :cond_0
    sget-object p0, Lf/a;->h:Lf/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public d(Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "SA/SamsungAccountManager"

    const-string v0, "addAccountLoginListener() : listener is null!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lf/a;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lf/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "SA/SamsungAccountManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added account login listener - size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)Z
    .locals 2

    iget-object v0, p0, Lf/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Lf/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public final f(Z)V
    .locals 4

    iget-object v0, p0, Lf/a;->d:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lf/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;

    invoke-interface {v3, p1}, Lcom/samsung/android/support/senl/nt/base/common/sync/IAccountLoginListener;->onLoginInfoReceived(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "SA/SamsungAccountManager"

    const-string v0, "cancelAuthInfo() : listener == null!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lf/a;->c:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lf/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "SA/SamsungAccountManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove auth info req listener : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lf/a;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lf/a;->b:Lg/c;

    invoke-interface {p1}, Lg/c;->b()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf/a;->b:Lg/c;

    invoke-interface {v0}, Lg/c;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf/a;->b:Lg/c;

    invoke-interface {v0}, Lg/c;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;
    .locals 1

    iget-object v0, p0, Lf/a;->e:Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf/a;->b:Lg/c;

    invoke-interface {v0}, Lg/c;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf/a;->b:Lg/c;

    invoke-interface {v0}, Lg/c;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf/a;->b:Lg/c;

    invoke-interface {v0}, Lg/c;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf/a;->b:Lg/c;

    invoke-interface {v0}, Lg/c;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lf/a;->b:Lg/c;

    invoke-interface {v0}, Lg/c;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/common/util/HashUtils;->generateSha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Z
    .locals 2

    iget-object v0, p0, Lf/a;->e:Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    sget-object v1, Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;->LOCAL:Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()Z
    .locals 2

    iget-object v0, p0, Lf/a;->b:Lg/c;

    invoke-interface {v0}, Lg/c;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lf/a;->b:Lg/c;

    invoke-interface {v0}, Lg/c;->isLogined()Z

    move-result v0

    return v0
.end method

.method public s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lf/a;->b:Lg/c;

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/samsung/android/app/notes/sync/account/otherdevice/a;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    iget-object v1, v0, Lf/a;->b:Lg/c;

    invoke-interface {v1}, Lg/c;->isLogined()Z

    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lf/a;->b:Lg/c;

    invoke-interface {v0}, Lg/c;->isLogined()Z

    return-void
.end method

.method public u()V
    .locals 2

    iget-object v0, p0, Lf/a;->e:Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    sget-object v1, Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;->LOCAL:Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lf/a;->b:Lg/c;

    invoke-interface {v0}, Lg/c;->isLogined()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/a;->b:Lg/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lg/c;->e(Z)V

    :goto_0
    return-void
.end method

.method public final v()V
    .locals 1

    iget-object v0, p0, Lf/a;->b:Lg/c;

    invoke-interface {v0}, Lg/c;->a()V

    return-void
.end method

.method public w(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lf/a;->c:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lf/a;->e(Lcom/samsung/android/support/senl/nt/base/common/sync/IAuthInfoReqListener;)Z

    const-string p1, "SA/SamsungAccountManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SA] requestAuthInfo() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lf/a;->v()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const-string p1, "SA/SamsungAccountManager"

    const-string v0, "[SA] requestAuthInfo() : listener is null!"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public x()V
    .locals 1

    iget-object v0, p0, Lf/a;->b:Lg/c;

    invoke-interface {v0}, Lg/c;->d()V

    return-void
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Lf/a;->b:Lg/c;

    invoke-interface {v0}, Lg/c;->c()V

    return-void
.end method
