.class public Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteAttachmentTask;
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
.field private static final TAG:Ljava/lang/String; = "NoteAttachmentTask"


# instance fields
.field private contentType:Ljava/lang/String;

.field private mCallback:Ll1/a;

.field private method:Ljava/lang/String;

.field private number:I

.field private path:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILl1/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteAttachmentTask;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteAttachmentTask;->method:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteAttachmentTask;->contentType:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteAttachmentTask;->path:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteAttachmentTask;->number:I

    iput-object p6, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteAttachmentTask;->mCallback:Ll1/a;

    invoke-direct {p0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteAttachmentTask;->createJsonValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteAttachmentTask;->value:Ljava/lang/String;

    return-void
.end method

.method private createJsonValue()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "@odata.type"

    const-string v2, "#microsoft.graph.fileAttachment"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteAttachmentTask;->number:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "contentType"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteAttachmentTask;->path:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/util/FileUtils;->extractFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentId"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteAttachmentTask;->path:Ljava/lang/String;

    invoke-static {v1}, Ln1/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentBytes"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createJsonValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NoteAttachmentTask"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteAttachmentTask;->doInBackground([Ljava/lang/Void;)Ll1/c;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ll1/c;
    .locals 7

    const-string p1, "NoteAttachmentTask"

    const-string v0, "doInBackground"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lk1/d;

    invoke-direct {v1}, Lk1/d;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteAttachmentTask;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteAttachmentTask;->method:Ljava/lang/String;

    invoke-static {}, Lk1/b;->d()Lk1/b;

    move-result-object p1

    invoke-virtual {p1}, Lk1/b;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteAttachmentTask;->contentType:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteAttachmentTask;->value:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lk1/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ll1/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ll1/c;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteAttachmentTask;->onPostExecute(Ll1/c;)V

    return-void
.end method

.method public onPostExecute(Ll1/c;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/connectednotes/NoteAttachmentTask;->mCallback:Ll1/a;

    invoke-interface {v0, p1}, Ll1/a;->a(Ll1/c;)V

    return-void
.end method
