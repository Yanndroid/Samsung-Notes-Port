.class public abstract Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final mMenuItemContract:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemContract;

.field public final mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;

.field public final mView:Landroid/view/View;

.field private mViewId:I

.field public final mWritingToolManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "MenuItem"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/util/SOLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemContract;Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->TAG:Ljava/lang/String;

    const-string v1, "MenuItem"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mMenuItemContract:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItemContract;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mWritingToolManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getToolType()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mWritingToolManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;->getToolTypeAction(I)I

    move-result v0

    return v0
.end method

.method public getViewId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mViewId:I

    return v0
.end method

.method public abstract onClick()V
.end method

.method public setSelected(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/setting/SettingViewManager;->hide(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->setToolType()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public setToolType()V
    .locals 0

    return-void
.end method

.method public setViewId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/view/menubar/item/MenuItem;->mViewId:I

    return-void
.end method
