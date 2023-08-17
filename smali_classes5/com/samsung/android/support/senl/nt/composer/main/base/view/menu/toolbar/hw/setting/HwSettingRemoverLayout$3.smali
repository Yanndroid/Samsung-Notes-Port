.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/setting/SpenSettingRemoverLayout$EraseAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEraseAll(II)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEraseAll# mEraseAllType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->executeEraseAllOnAllPages()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;)I

    move-result p1

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->executeEraseAllOnCurrentPage(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    if-ne p2, v0, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->executeEraseAllOnCurrentPage(I)V

    goto :goto_1

    :cond_4
    if-ne p2, v1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingRemoverLayout;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/HwSettingLayout;->mSettingViewManager:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/hw/setting/ISettingViewManager;->executeEraseAllOnCurrentPage(I)V

    :cond_5
    :goto_1
    return-void
.end method
