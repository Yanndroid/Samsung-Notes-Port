.class public Lcom/samsung/android/app/notes/sync/microsoft/graph/http/NotePageTask;
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
.field private static final TAG:Ljava/lang/String; = "NotePageTask"


# instance fields
.field private mCallback:Ll1/a;

.field private method:Ljava/lang/String;

.field private pathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILl1/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ll1/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/NotePageTask;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/NotePageTask;->method:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/NotePageTask;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/NotePageTask;->pathList:Ljava/util/List;

    iput p5, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/NotePageTask;->width:I

    iput-object p6, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/NotePageTask;->mCallback:Ll1/a;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/NotePageTask;->doInBackground([Ljava/lang/Void;)Ll1/c;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ll1/c;
    .locals 8

    const-string p1, "NotePageTask"

    const-string v0, "doInBackground"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/MSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lk1/c;

    invoke-direct {v1}, Lk1/c;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/NotePageTask;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/NotePageTask;->method:Ljava/lang/String;

    invoke-static {}, Lk1/b;->d()Lk1/b;

    move-result-object p1

    invoke-virtual {p1}, Lk1/b;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/NotePageTask;->title:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/NotePageTask;->pathList:Ljava/util/List;

    iget v7, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/NotePageTask;->width:I

    invoke-virtual/range {v1 .. v7}, Lk1/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)Ll1/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ll1/c;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/NotePageTask;->onPostExecute(Ll1/c;)V

    return-void
.end method

.method public onPostExecute(Ll1/c;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/microsoft/graph/http/NotePageTask;->mCallback:Ll1/a;

    invoke-interface {v0, p1}, Ll1/a;->a(Ll1/c;)V

    return-void
.end method
