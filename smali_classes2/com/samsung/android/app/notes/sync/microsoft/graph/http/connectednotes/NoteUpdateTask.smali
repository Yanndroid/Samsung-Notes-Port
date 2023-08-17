.class public Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteUpdateTask;
.super Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NoteUpdateTask"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li1/h;Ll1/a;)V
    .locals 0
    .param p4    # Li1/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li1/h;Ll1/a;)V

    const-string p1, "NoteUpdateTask"

    const-string p2, "created."

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createJson()Lcom/google/gson/JsonObject;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->createJsonValueMain()Lcom/google/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ll1/c;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteUpdateTask;->onPostExecute(Ll1/c;)V

    return-void
.end method

.method public onPostExecute(Ll1/c;)V
    .locals 2

    const-string v0, "NoteUpdateTask"

    const-string v1, "postExecute."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->onPostExecute(Ll1/c;)V

    return-void
.end method
