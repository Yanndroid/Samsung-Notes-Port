.class Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6$1;->this$1:Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6$1;->this$1:Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6;->this$0:Lcom/samsung/android/penup/internal/dialog/CollectionDialog;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->access$200(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6$1;->this$1:Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6;

    iget-object v1, v1, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6;->this$0:Lcom/samsung/android/penup/internal/dialog/CollectionDialog;

    invoke-static {v1}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->access$100(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)Lcom/samsung/android/penup/internal/dialog/CollectionDialog$CollectionDialogCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$CollectionDialogCallback;->onSubmitted(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6$1;->this$1:Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$6;->this$0:Lcom/samsung/android/penup/internal/dialog/CollectionDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    return-void
.end method
