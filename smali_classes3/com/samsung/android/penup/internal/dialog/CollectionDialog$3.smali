.class Lcom/samsung/android/penup/internal/dialog/CollectionDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->onCancel(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/penup/internal/dialog/CollectionDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$3;->this$0:Lcom/samsung/android/penup/internal/dialog/CollectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$3;->this$0:Lcom/samsung/android/penup/internal/dialog/CollectionDialog;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog;->access$100(Lcom/samsung/android/penup/internal/dialog/CollectionDialog;)Lcom/samsung/android/penup/internal/dialog/CollectionDialog$CollectionDialogCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/penup/internal/dialog/CollectionDialog$CollectionDialogCallback;->onCanceled()V

    return-void
.end method
