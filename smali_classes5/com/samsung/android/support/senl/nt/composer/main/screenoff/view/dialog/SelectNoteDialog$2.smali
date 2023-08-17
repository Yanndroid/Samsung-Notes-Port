.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;->setButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "discard#"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->onSelectNoteDialogDiscard()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;->a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$ISelectNoteDialogPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/dialog/DialogContract$ISelectNoteDialogPresenter;->discard()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/SelectNoteDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
