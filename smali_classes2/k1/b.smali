.class public Lk1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lk1/b;


# instance fields
.field public a:Lcom/microsoft/identity/client/IAccount;

.field public b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk1/b;->a:Lcom/microsoft/identity/client/IAccount;

    iput-object v0, p0, Lk1/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized d()Lk1/b;
    .locals 2

    const-class v0, Lk1/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lk1/b;->c:Lk1/b;

    if-nez v1, :cond_0

    new-instance v1, Lk1/b;

    invoke-direct {v1}, Lk1/b;-><init>()V

    sput-object v1, Lk1/b;->c:Lk1/b;

    :cond_0
    sget-object v1, Lk1/b;->c:Lk1/b;
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
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILl1/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ll1/a;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPage, title : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GraphHttpHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/NotePageTask;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://graph.microsoft.com/v1.0/me/onenote/sections/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/pages"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "POST"

    move-object v2, v0

    move-object v5, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/NotePageTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILl1/a;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addPage Failed, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk1/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/microsoft/identity/client/IAccount;
    .locals 1

    iget-object v0, p0, Lk1/b;->a:Lcom/microsoft/identity/client/IAccount;

    return-object v0
.end method

.method public e(Ll1/b;)V
    .locals 8

    const-string v0, "GraphHttpHelper"

    const-string v1, "getUser"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/NoteHttpTask;

    new-instance v7, Lk1/b$a;

    invoke-direct {v7, p0, p1}, Lk1/b$a;-><init>(Lk1/b;Ll1/b;)V

    const-string v3, "https://graph.microsoft.com/v1.0/me"

    const-string v4, "GET"

    const-string v5, "application/json"

    const/4 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/NoteHttpTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ll1/a;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public f(Ljava/lang/String;Lcom/microsoft/identity/client/IAccount;)V
    .locals 2

    const-string v0, "GraphHttpHelper"

    if-eqz p2, :cond_0

    const-string v1, "set account id"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lk1/b;->a:Lcom/microsoft/identity/client/IAccount;

    invoke-interface {p2}, Lcom/microsoft/identity/client/IAccount;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Li1/a;->k(Ljava/lang/String;)V

    :cond_0
    const-string p2, "setAccessToken."

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lk1/b;->b:Ljava/lang/String;

    invoke-static {p1}, Li1/a;->j(Ljava/lang/String;)V

    return-void
.end method
