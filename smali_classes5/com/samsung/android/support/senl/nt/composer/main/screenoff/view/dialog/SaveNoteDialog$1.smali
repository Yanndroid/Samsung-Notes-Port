.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SaveNoteDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SaveNoteDialog;->setButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SaveNoteDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SaveNoteDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SaveNoteDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SaveNoteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SaveNoteDialog;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cancel#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->onSaveNoteDialogCancel()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SaveNoteDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SaveNoteDialog;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SaveNoteDialog;->a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SaveNoteDialog;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$ISaveNoteDialogPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$ISaveNoteDialogPresenter;->cancel()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SaveNoteDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SaveNoteDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
