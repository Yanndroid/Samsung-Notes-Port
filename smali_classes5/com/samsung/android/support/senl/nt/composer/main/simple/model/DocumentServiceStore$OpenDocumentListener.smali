.class Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$OpenDocumentListener;
.super Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OpenDocumentListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener<",
        "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$OpenDocumentListener;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/service/callback/NotesDocumentCompletionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;Ljava/lang/String;)V
    .locals 0
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
            "Lcom/samsung/android/support/senl/nt/model/documents/spen/SpenWordDocument;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$OpenDocumentListener;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->f(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;)V

    return-void
.end method

.method public failed(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore$OpenDocumentListener;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;->g(Lcom/samsung/android/support/senl/nt/composer/main/simple/model/DocumentServiceStore;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
