.class Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/PwHwToolbarPresenter$SettingInfoManagerPdfWriter;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/PwHwToolbarPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingInfoManagerPdfWriter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/PwHwToolbarPresenter$SettingInfoManagerPdfWriter$CustomSettingToolbarTabletItemData;,
        Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/PwHwToolbarPresenter$SettingInfoManagerPdfWriter$CustomSettingToolbarPhoneItemData;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;-><init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/WritingToolManager;)V

    return-void
.end method


# virtual methods
.method public getToolbarItemData()Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingToolbarItemData;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->mSettingToolbarItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingToolbarItemData;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->mIsTablet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/PwHwToolbarPresenter$SettingInfoManagerPdfWriter$CustomSettingToolbarPhoneItemData;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/PwHwToolbarPresenter$SettingInfoManagerPdfWriter$CustomSettingToolbarPhoneItemData;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/PwHwToolbarPresenter$SettingInfoManagerPdfWriter$CustomSettingToolbarTabletItemData;

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/PwHwToolbarPresenter$SettingInfoManagerPdfWriter$CustomSettingToolbarTabletItemData;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/presenter/menu/toolbar/hwtoolbar/b;)V

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->mSettingToolbarItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingToolbarItemData;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/toolbar/hwtoolbar/setting/SettingInfoManager;->mSettingToolbarItemData:Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/hw/setting/data/SettingToolbarItemData;

    return-object v0
.end method
