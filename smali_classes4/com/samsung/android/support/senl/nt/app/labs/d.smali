.class public final synthetic Lcom/samsung/android/support/senl/nt/app/labs/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;


# direct methods
.method public synthetic constructor <init>(ILandroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/d;->a:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/labs/d;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/labs/d;->c:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/d;->a:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/labs/d;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/labs/d;->c:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/labs/FolderTest;->a(ILandroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
