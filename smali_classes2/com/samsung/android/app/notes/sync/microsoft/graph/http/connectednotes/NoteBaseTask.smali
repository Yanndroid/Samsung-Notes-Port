.class public abstract Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ll1/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NoteBaseTask"

.field private static final contentCreator:Lm1/a;


# instance fields
.field public callback:Ll1/a;

.field public contentType:Ljava/lang/String;

.field public data:Li1/h;

.field public method:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm1/b;

    invoke-direct {v0}, Lm1/b;-><init>()V

    sput-object v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->contentCreator:Lm1/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li1/h;Ll1/a;)V
    .locals 0
    .param p4    # Li1/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->method:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->contentType:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->data:Li1/h;

    iput-object p5, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->callback:Ll1/a;

    return-void
.end method


# virtual methods
.method public createJson()Lcom/google/gson/JsonObject;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->createJsonValueMain()Lcom/google/gson/JsonObject;

    move-result-object v0

    new-instance v1, Lcom/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/google/gson/JsonArray;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->createJsonValueExtension()Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const-string v2, "extensions"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    return-object v0
.end method

.method public createJsonValueExtension()Lcom/google/gson/JsonObject;
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->contentCreator:Lm1/a;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->data:Li1/h;

    invoke-virtual {v0, v1}, Lm1/a;->a(Li1/h;)Lcom/google/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public createJsonValueMain()Lcom/google/gson/JsonObject;
    .locals 2

    sget-object v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->contentCreator:Lm1/a;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->data:Li1/h;

    invoke-virtual {v0, v1}, Lm1/a;->b(Li1/h;)Lcom/google/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->doInBackground([Ljava/lang/Void;)Ll1/c;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ll1/c;
    .locals 6

    const-string p1, "NoteBaseTask"

    const-string v0, "doInBackground"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->createJson()Lcom/google/gson/JsonObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->value:Ljava/lang/String;

    new-instance v0, Lk1/d;

    invoke-direct {v0}, Lk1/d;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->method:Ljava/lang/String;

    invoke-static {}, Lk1/b;->d()Lk1/b;

    move-result-object p1

    invoke-virtual {p1}, Lk1/b;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->contentType:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->value:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lk1/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ll1/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ll1/c;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->onPostExecute(Ll1/c;)V

    return-void
.end method

.method public onPostExecute(Ll1/c;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteBaseTask;->callback:Ll1/a;

    invoke-interface {v0, p1}, Ll1/a;->a(Ll1/c;)V

    return-void
.end method
