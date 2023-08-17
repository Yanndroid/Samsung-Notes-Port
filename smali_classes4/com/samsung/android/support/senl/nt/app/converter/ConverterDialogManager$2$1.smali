.class Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2;->onResult(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2;

.field public final synthetic val$filePath:Ljava/lang/String;

.field public final synthetic val$password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2$1;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2$1;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2$1;->val$filePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConverterDialogManager"

    const-string v1, "ResultListener, file path is empty."

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->e(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2$1;->this$1:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2$1;->val$filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager$2$1;->val$password:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;->f(Lcom/samsung/android/support/senl/nt/app/converter/ConverterDialogManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
