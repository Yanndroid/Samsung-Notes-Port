.class public abstract Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/samsung/android/support/senl/nt/model/documents/data/ISpenDocument;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/model/executor/task/DocumentCompletionListener<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentDataSource<",
            "TT;+",
            "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    check-cast p1, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;->completed(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Ljava/lang/String;)V

    return-void
.end method

.method public abstract completed(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Ljava/lang/String;)V
    .param p1    # Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
