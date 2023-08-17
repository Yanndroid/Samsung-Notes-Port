.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan;->sendMessage(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$2;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$ResultValues;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$2;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$InputValues;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskDocumentScan$ResultValues;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/SingleThreadTask;->notifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    return-void
.end method
