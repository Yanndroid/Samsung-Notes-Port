.class public Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/DialogContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Landroid/content/Context;I)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->getInstance()Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->show(Landroid/content/Context;I)V

    return-void
.end method
