.class public Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/ToastModelHelper;
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

    invoke-virtual {p2}, Lc1/b;->c()Lcom/samsung/android/app/notes/sync/infos/ModelType;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/ToastModelFactory;->create(Lcom/samsung/android/app/notes/sync/infos/ModelType;)Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/IModelToast;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/IModelToast;->showError(Landroid/content/Context;Lc1/a;)V

    return-void
.end method

.method public showInfo(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/infos/ModelType;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/ToastModelFactory;->create(Lcom/samsung/android/app/notes/sync/infos/ModelType;)Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/IModelToast;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/IModelToast;->showInfo(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
