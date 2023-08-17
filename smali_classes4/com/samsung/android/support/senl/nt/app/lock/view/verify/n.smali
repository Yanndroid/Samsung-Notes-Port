.class public final synthetic Lcom/samsung/android/support/senl/nt/app/lock/view/verify/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

.field public final synthetic b:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/n;->a:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/n;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/n;->a:Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/n;->b:Landroid/os/Handler;

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;->j(Lcom/samsung/android/support/senl/nt/app/lock/view/verify/VerifyMultiBioView;Landroid/os/Handler;Landroid/content/DialogInterface;I)V

    return-void
.end method
