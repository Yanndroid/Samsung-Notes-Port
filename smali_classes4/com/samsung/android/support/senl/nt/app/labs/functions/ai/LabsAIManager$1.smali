.class Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager;->extractTexts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager;

.field public final synthetic val$progressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager;Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager$1;->val$progressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "extractText"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager;->b(Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager;)Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->getAllDataList(IZZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager;

    invoke-static {v3, v1, v2}, Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager;->c(Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager;Ljava/io/File;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager;

    invoke-static {v3, v1, v2}, Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager;->d(Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager;->a(Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "failed to extract text"

    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->show(Landroid/content/Context;Ljava/lang/String;IZ)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/functions/ai/LabsAIManager$1;->val$progressDialog:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
