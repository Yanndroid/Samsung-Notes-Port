.class public Lj1/e$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj1/e;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj1/e;


# direct methods
.method public constructor <init>(Lj1/e;)V
    .locals 0

    iput-object p1, p0, Lj1/e$f;->a:Lj1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ll1/c;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result updateNote, onResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateNote"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    :try_start_0
    invoke-virtual {p1}, Ll1/c;->b()I

    move-result v0

    const/16 v2, 0x191

    if-ne v0, v2, :cond_0

    const-string p1, "result deleteNote, HTTP_RESPONSE_UNAUTHORIZED"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    iget-object v0, p0, Lj1/e$f;->a:Lj1/e;

    invoke-static {v0}, Lj1/e;->a(Lj1/e;)Li1/h;

    move-result-object v0

    iget-object v0, v0, Li1/h;->c:Ljava/lang/String;

    iget-object v2, p0, Lj1/e$f;->a:Lj1/e;

    invoke-static {v2}, Lj1/e;->a(Lj1/e;)Li1/h;

    move-result-object v2

    iget-object v2, v2, Li1/h;->b:Ljava/lang/String;

    iget-object v3, p0, Lj1/e$f;->a:Lj1/e;

    invoke-static {v3}, Lj1/e;->a(Lj1/e;)Li1/h;

    move-result-object v3

    iget-object v3, v3, Li1/h;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    invoke-virtual {p1, v0, v2, v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->i(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->M()V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Ll1/c;->b()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const-string p1, "result deleteNote, HTTP_RESPONSE_COMMON_FAILED"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Ll1/c;->b()I

    move-result v0

    const/16 v2, 0x1ad

    if-ne v0, v2, :cond_2

    const-string p1, "result deleteNote, HTTP_RESPONSE_TOO_MANY_REQUESTS"

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ll1/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    :try_start_1
    const-string v3, "lastModifiedDateTime"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    :try_start_2
    const-string/jumbo v0, "updateNote, lastModifiedDateTime is not exist"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastModifiedDateTime : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", connectedNotesId : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object p1

    iget-object v0, p0, Lj1/e$f;->a:Lj1/e;

    invoke-static {v0}, Lj1/e;->a(Lj1/e;)Li1/h;

    move-result-object v0

    iget-object v0, v0, Li1/h;->c:Ljava/lang/String;

    iget-object v2, p0, Lj1/e$f;->a:Lj1/e;

    invoke-static {v2}, Lj1/e;->a(Lj1/e;)Li1/h;

    move-result-object v2

    iget-object v2, v2, Li1/h;->b:Ljava/lang/String;

    iget-object v3, p0, Lj1/e$f;->a:Lj1/e;

    invoke-static {v3}, Lj1/e;->a(Lj1/e;)Li1/h;

    move-result-object v3

    iget-object v3, v3, Li1/h;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    invoke-virtual {p1, v0, v2, v3}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->i(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;)V

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {v2}, Ln1/b;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->x()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    move-result-object v0

    iget-object v4, p0, Lj1/e$f;->a:Lj1/e;

    invoke-static {v4}, Lj1/e;->a(Lj1/e;)Li1/h;

    move-result-object v4

    iget-object v4, v4, Li1/h;->c:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, p1, v5}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;->V(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2, v3}, Li1/a;->r(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method
