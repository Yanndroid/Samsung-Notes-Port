.class public Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuShare;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/AbsOptionMenuShare;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuContract$IOptionMenuShare;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OptionMenuShare"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuShare;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/AbsOptionMenuShare;-><init>()V

    invoke-virtual {p1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter;->setShareView(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuContract$IOptionMenuShare;)V

    return-void
.end method


# virtual methods
.method public getSALogEventId()Ljava/lang/String;
    .locals 1

    const-string v0, "7421"

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuShare;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_share_title:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setShareMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;Z)V
    .locals 1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_share:I

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;->setChildResId(I)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSupportedFileProvider()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->removeMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuBehavior;->setEnabledMenu(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/OptionMenuParam;Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic showPopupMenu(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/option/AbsOptionMenuShare;->showPopupMenu(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter;)V

    return-void
.end method
