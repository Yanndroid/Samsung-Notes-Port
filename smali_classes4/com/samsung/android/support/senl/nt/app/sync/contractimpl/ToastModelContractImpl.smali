.class public Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/ToastModelContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf0/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showError(Landroid/content/Context;Lc1/a;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/ToastModelHelper;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/ToastModelHelper;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/ToastModelHelper;->showError(Landroid/content/Context;Lc1/a;)V

    return-void
.end method

.method public showInfo(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/infos/ModelType;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/ToastModelHelper;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/ToastModelHelper;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/ToastModelHelper;->showInfo(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/infos/ModelType;Ljava/lang/String;)V

    return-void
.end method
