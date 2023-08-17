.class Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/winset/app/dialog/IEditDialogResult;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditDialogDismiss()V
    .locals 0

    return-void
.end method

.method public onEditDialogResult(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;->a(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager;)Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$IPresenter;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/DialogManager$IPresenter;->onEditDialogResult(ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
