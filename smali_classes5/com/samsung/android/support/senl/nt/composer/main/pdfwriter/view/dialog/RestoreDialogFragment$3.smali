.class Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$Contract;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;->getContract()Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiscardClicked()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDiscardClicked# dummy"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestoreClicked()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/view/dialog/RestoreDialogFragment;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRestoreClicked# dummy"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
