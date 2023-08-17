.class public final synthetic Lcom/samsung/android/support/senl/nt/app/lock/view/verify/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;

.field public final synthetic b:Landroid/os/Handler;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/d;->a:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/d;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/d;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/d;->a:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/d;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/d;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;->h(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyIrisView;Landroid/os/Handler;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method
