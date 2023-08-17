.class public Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/TipCardModelContractImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addErrorTipCard(Landroid/content/Context;Lc1/a;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/TipCardModelHelper;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/TipCardModelHelper;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/TipCardModelHelper;->addErrorTipCard(Landroid/content/Context;Lc1/a;)V

    return-void
.end method

.method public addInfoTipCard(Landroid/content/Context;Lc1/b;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/TipCardModelHelper;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/TipCardModelHelper;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/TipCardModelHelper;->addInfoTipCard(Landroid/content/Context;Lc1/b;)V

    return-void
.end method

.method public removeTipCard(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/infos/ModelType;I)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/TipCardModelHelper;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/TipCardModelHelper;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/TipCardModelHelper;->removeTipCard(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/infos/ModelType;I)V

    return-void
.end method
