.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/PasswordSetDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/PasswordSetDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IPasswordSetDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/PasswordSetDialog;

.field public final synthetic val$noteUuid:Ljava/lang/String;

.field public final synthetic val$passwordSetDialogListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IPasswordSetDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/PasswordSetDialog;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IPasswordSetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/PasswordSetDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/PasswordSetDialog;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/PasswordSetDialog$1;->val$noteUuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/PasswordSetDialog$1;->val$passwordSetDialogListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IPasswordSetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-array p1, p3, [Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/PasswordSetDialog$1;->val$noteUuid:Ljava/lang/String;

    aput-object p2, p1, v0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isLockedNotes([Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/dialog/PasswordSetDialog$1;->val$passwordSetDialogListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IPasswordSetDialog;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/dialog/DialogViewContract$IPasswordSetDialog;->startConvert()V

    return p3

    :cond_1
    :goto_0
    return v0
.end method
