.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;->setWindowAttribute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x20000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/dialog/AbsDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method
