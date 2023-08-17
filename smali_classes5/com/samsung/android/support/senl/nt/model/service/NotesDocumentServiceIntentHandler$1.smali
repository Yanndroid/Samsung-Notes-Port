.class Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->removeCacheAndResave(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;

.field public final synthetic val$remainingDocs:Ljava/util/Set;

.field public final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$1;->val$remainingDocs:Ljava/util/Set;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$1;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$1;->val$remainingDocs:Ljava/util/Set;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$1;->val$uuid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$1;->val$remainingDocs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;->c(Lcom/samsung/android/support/senl/nt/model/service/NotesDocumentServiceIntentHandler;Z)V

    :cond_0
    return-void
.end method
