.class public final synthetic Lcom/samsung/android/support/senl/nt/app/labs/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;ILjava/lang/String;Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/labs/b;->a:Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/app/labs/b;->b:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/labs/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/labs/b;->d:Landroid/app/Activity;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/app/labs/b;->e:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/labs/b;->a:Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/app/labs/b;->b:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/labs/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/labs/b;->d:Landroid/app/Activity;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/app/labs/b;->e:Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;->b(Lcom/samsung/android/support/senl/nt/app/labs/DocumentTest;ILjava/lang/String;Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialog;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
