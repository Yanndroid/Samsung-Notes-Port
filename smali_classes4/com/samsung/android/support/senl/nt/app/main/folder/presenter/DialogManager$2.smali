.class Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IFolderPickerDialogResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$IPresenter;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$IPresenter;->onBackKeyDown()V

    return-void
.end method

.method public onConfirm(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$IPresenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$IPresenter;->onPickConfirm(Ljava/lang/String;)V

    return-void
.end method
