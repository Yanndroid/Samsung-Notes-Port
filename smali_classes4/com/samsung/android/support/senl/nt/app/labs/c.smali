.class public final synthetic Lcom/samsung/android/support/senl/nt/app/labs/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:I

.field public final synthetic d:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;Landroid/app/Activity;ILcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/c;->a:Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/labs/c;->b:Landroid/app/Activity;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/labs/c;->c:I

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/labs/c;->d:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/c;->a:Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/labs/c;->b:Landroid/app/Activity;

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/labs/c;->c:I

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/labs/c;->d:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;->a(Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;Landroid/app/Activity;ILcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
