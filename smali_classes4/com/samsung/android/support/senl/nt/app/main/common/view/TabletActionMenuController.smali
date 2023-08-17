.class public Lcom/samsung/android/support/senl/nt/app/main/common/view/TabletActionMenuController;
.super Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;Lcom/samsung/android/support/senl/nt/app/common/penrecyclerview/PenRecyclerView;)V

    return-void
.end method


# virtual methods
.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public setDisplayHomeAsUpEnabled(ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/ActionMenuController;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method
