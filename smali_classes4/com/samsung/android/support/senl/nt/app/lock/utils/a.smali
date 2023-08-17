.class public final synthetic Lcom/samsung/android/support/senl/nt/app/lock/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AlertDialog;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/a;->a:Landroidx/appcompat/app/AlertDialog;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/a;->a:Landroidx/appcompat/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/utils/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/lock/utils/LockDialogUtils$1;->a(Landroidx/appcompat/app/AlertDialog;Ljava/lang/String;)V

    return-void
.end method
