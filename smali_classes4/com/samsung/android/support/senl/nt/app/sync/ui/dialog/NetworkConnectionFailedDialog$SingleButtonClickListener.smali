.class Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$SingleButtonClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SingleButtonClickListener"
.end annotation


# instance fields
.field private mType:I

.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$SingleButtonClickListener;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$SingleButtonClickListener;->mType:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$SingleButtonClickListener;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->d(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;)Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$SingleButtonClickListener;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->getInstance()Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$SingleButtonClickListener;->mType:I

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedType;->getResIdTitle(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "[SingleButtonClickListener] onClick(OK) : %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "NT$NetworkConnectionFailedDialog"

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog$SingleButtonClickListener;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;

    invoke-static {p2, v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;->g(Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedDialog;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
