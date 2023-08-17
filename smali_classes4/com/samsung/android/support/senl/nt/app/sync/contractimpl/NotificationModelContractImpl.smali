.class public Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/NotificationModelContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/infos/ModelType;I)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/NotificationModelHelper;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/NotificationModelHelper;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/NotificationModelHelper;->remove(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/infos/ModelType;I)V

    return-void
.end method

.method public showError(Landroid/content/Context;Lc1/a;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/NotificationModelHelper;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/NotificationModelHelper;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/NotificationModelHelper;->showError(Landroid/content/Context;Lc1/a;)V

    return-void
.end method

.method public showInfo(Landroid/content/Context;Lc1/b;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/NotificationModelHelper;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/NotificationModelHelper;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/NotificationModelHelper;->showInfo(Landroid/content/Context;Lc1/b;)V

    return-void
.end method
