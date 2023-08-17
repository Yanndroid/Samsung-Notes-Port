.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;->checkSecurePdfReader(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

.field public final synthetic val$filePath:Ljava/lang/String;

.field public final synthetic val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$3;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$3;->val$filePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$3;->val$inputValues:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$3;->val$filePath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;->r(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskAddPdf$InputValues;Ljava/lang/String;)V

    return-void
.end method
