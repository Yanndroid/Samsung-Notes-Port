.class public Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemContract;
.implements Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager$IMenuItemManager;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBtnMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mContainer:Landroid/view/View;

.field private final mMenuItemState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

.field private mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;

.field private final mWritingToolManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "MenuItemManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewState;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->TAG:Ljava/lang/String;

    const-string v1, "MenuItemManager"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mContainer:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->getWritingToolManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mWritingToolManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mMenuItemState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;

    invoke-direct {p0, p4}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->initSettingViewManager(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewState;)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->initItems()V

    return-void
.end method

.method private initItems()V
    .locals 6

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->TAG:Ljava/lang/String;

    const-string v1, "initItems"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mBtnMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mBtnMap:Ljava/util/LinkedHashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemPenColor;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mContainer:Landroid/view/View;

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$id;->som_pen_color_0:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mWritingToolManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemPenColor;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemContract;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mBtnMap:Ljava/util/LinkedHashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemPenSize;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mContainer:Landroid/view/View;

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$id;->pen_size_button:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mWritingToolManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemPenSize;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemContract;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mBtnMap:Ljava/util/LinkedHashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemRemover;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mContainer:Landroid/view/View;

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$id;->remover_button:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mWritingToolManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemRemover;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemContract;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mBtnMap:Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemPin;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mContainer:Landroid/view/View;

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$id;->pin_button:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemPin;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemContract;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mBtnMap:Ljava/util/LinkedHashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemSave;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mContainer:Landroid/view/View;

    sget v4, Lcom/samsung/android/support/senl/nt/composer/R$id;->save_button:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemSave;-><init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemContract;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mBtnMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->setViewId(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenInfoModel;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->onUpdatedPenColor(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mMenuItemState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;->getMenuItemKey()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->onSelected(I)V

    return-void
.end method

.method private initSettingViewManager(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewState;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->TAG:Ljava/lang/String;

    const-string v1, "initSettingViewManager"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mWritingToolManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    invoke-virtual {v0, v1, p0, v2, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;->init(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager$IMenuItemManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewState;)V

    return-void
.end method


# virtual methods
.method public addPreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->TAG:Ljava/lang/String;

    const-string v1, "addPreTouchListener"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->addPreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V

    return-void
.end method

.method public onDeleteAllObject()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->TAG:Ljava/lang/String;

    const-string v1, "onDeleteAllObject"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->onDeleteAllObject()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->onSelected(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mBtnMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mBtnMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public onPin()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->TAG:Ljava/lang/String;

    const-string v1, "onPin"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->onPin()V

    return-void
.end method

.method public onSave()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->TAG:Ljava/lang/String;

    const-string v1, "onSave"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->onSave()V

    return-void
.end method

.method public onSelected(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelected key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mMenuItemState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;->getMenuItemKey()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mBtnMap:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mMenuItemState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;->getMenuItemKey()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->setSelected(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mMenuItemState:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemState;->setMenuItemKey(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mBtnMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->setSelected(Z)V

    return-void
.end method

.method public onUpdatedPenColor(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdatedPenColor color "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mBtnMap:Ljava/util/LinkedHashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mView:Landroid/view/View;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->pen_color_item:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/statical/PenColorPaletteModel;->getSettingPenDescription(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/ViewCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public removePreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->TAG:Ljava/lang/String;

    const-string v1, "removePreTouchListener"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarPresenter;->removePreTouchListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPreTouchListenerImpl$PreTouchListener;)V

    return-void
.end method

.method public update(II)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/samsung/android/support/senl/nt/composer/main/screenoff/presenter/menubar/MenuBarItemType;
        .end annotation
    .end param

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemManager;->mBtnMap:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemPin;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemPin;->setVisibility(I)V

    :cond_0
    return-void
.end method
