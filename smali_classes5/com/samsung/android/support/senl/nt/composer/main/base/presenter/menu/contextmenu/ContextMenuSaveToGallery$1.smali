.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuSaveToGallery$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuSaveToGallery;->executeMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$ResultValues;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuSaveToGallery;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuSaveToGallery;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuSaveToGallery$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuSaveToGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$ResultValues;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuSaveToGallery$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuSaveToGallery;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_save_to_image_fail:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuSaveToGallery$1;->onError(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$ResultValues;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$ResultValues;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuSaveToGallery$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuSaveToGallery;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuSaveToGallery;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuSaveToGallery;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->clearSelectObject()V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuSaveToGallery$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuSaveToGallery;

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_save_to_image_done:I

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$ResultValues;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuSaveToGallery$1;->onSuccess(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskSaveToGallery$ResultValues;)V

    return-void
.end method
