.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemPenSize;
.super Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "MenuItemPenSize"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemPenSize;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemContract;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemContract;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mView:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemPenSize;->TAG:Ljava/lang/String;

    const-string v1, "onClick#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->INSTANCE:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/sa/SAManager;->onPenClicked()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;->isShownSettingViews(I)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;->hide(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;->show(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;->isShownSettingViews(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;->hide(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mMenuItemContract:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemContract;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->getViewId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemContract;->onSelected(I)V

    :goto_0
    return-void
.end method

.method public setToolType()V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemPenSize;->TAG:Ljava/lang/String;

    const-string v1, "setToolType#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mWritingToolManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->setToolTypeAction(II)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mWritingToolManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->setToolTypeAction(II)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mWritingToolManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->setToolTypeAction(II)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mWritingToolManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->setToolTypeAction(II)V

    return-void
.end method
