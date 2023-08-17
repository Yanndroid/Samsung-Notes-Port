.class public Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/TipCardModelHelper;
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

    invoke-virtual {p2}, Lc1/b;->c()Lcom/samsung/android/app/notes/sync/infos/ModelType;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/TipCardModelFactory;->create(Lcom/samsung/android/app/notes/sync/infos/ModelType;)Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/IModelTipCard;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/IModelTipCard;->addErrorTipCard(Landroid/content/Context;Lc1/a;)V

    :cond_0
    return-void
.end method

.method public addInfoTipCard(Landroid/content/Context;Lc1/b;)V
    .locals 1

    invoke-virtual {p2}, Lc1/b;->c()Lcom/samsung/android/app/notes/sync/infos/ModelType;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/TipCardModelFactory;->create(Lcom/samsung/android/app/notes/sync/infos/ModelType;)Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/IModelTipCard;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/IModelTipCard;->addInfoTipCard(Landroid/content/Context;Lc1/b;)V

    :cond_0
    return-void
.end method

.method public removeTipCard(Landroid/content/Context;Lcom/samsung/android/app/notes/sync/infos/ModelType;I)V
    .locals 0

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/TipCardModelFactory;->create(Lcom/samsung/android/app/notes/sync/infos/ModelType;)Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/IModelTipCard;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p1, p3}, Lcom/samsung/android/support/senl/nt/app/sync/ui/tipcard/IModelTipCard;->removeTipCard(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
