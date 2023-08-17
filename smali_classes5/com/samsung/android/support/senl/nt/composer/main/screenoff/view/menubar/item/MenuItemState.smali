.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mMenuItemKey:I
    .annotation build Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarItemType;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;->mMenuItemKey:I

    return-void
.end method


# virtual methods
.method public getMenuItemKey()I
    .locals 1
    .annotation build Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarItemType;
    .end annotation

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;->mMenuItemKey:I

    return v0
.end method

.method public setMenuItemKey(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarItemType;
        .end annotation
    .end param

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;->mMenuItemKey:I

    return-void
.end method
