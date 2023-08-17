.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RemoveItemConfirmDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RemoveItemConfirmDialog;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RemoveItemConfirmDialog;

.field public final synthetic val$content:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

.field public final synthetic val$page:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

.field public final synthetic val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RemoveItemConfirmDialog;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RemoveItemConfirmDialog$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RemoveItemConfirmDialog;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RemoveItemConfirmDialog$1;->val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RemoveItemConfirmDialog$1;->val$page:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RemoveItemConfirmDialog$1;->val$content:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RemoveItemConfirmDialog$1;->val$presenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RemoveItemConfirmDialog$1;->val$page:Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/dialog/RemoveItemConfirmDialog$1;->val$content:Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-interface {p2, v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IVoiceDialogPresenter;->removeItem(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
