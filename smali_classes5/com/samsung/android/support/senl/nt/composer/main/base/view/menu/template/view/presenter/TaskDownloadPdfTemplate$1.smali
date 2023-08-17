.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->runNotifyCallback(ZLcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

.field public final synthetic val$result:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;

.field public final synthetic val$ret:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;ZLcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$1;->val$ret:Z

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$1;->val$result:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$1;->val$ret:Z

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$1;->val$result:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$ResultValues;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->access$000(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;ZLcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/template/view/presenter/TaskDownloadPdfTemplate;->clear()V

    return-void
.end method
