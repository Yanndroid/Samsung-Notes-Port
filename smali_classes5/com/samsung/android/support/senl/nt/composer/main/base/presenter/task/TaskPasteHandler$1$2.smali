.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$Construct;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1$2;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPdf(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1$2;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->s(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/paste/PasteRawContent$PdfInputs;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1$2;->this$1:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPasteHandler;->release()V

    return-void
.end method
