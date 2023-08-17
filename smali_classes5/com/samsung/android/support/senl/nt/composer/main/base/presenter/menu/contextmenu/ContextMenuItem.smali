.class public abstract Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mExecuteMenuItem:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addMenu(Landroid/view/Menu;)V
.end method

.method public abstract canShow()Z
.end method

.method public abstract executeMenu()V
.end method

.method public executeMenu(Landroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;->mExecuteMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;->executeMenu()V

    return-void
.end method

.method public isLockRelated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttachView(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onDetachView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;->mActivity:Landroid/app/Activity;

    return-void
.end method
