.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private final mMenuParent:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "InAppDeviceListDialogPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;->mMenuParent:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;->mMenuParent:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;

    return-object p0
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getView(Landroid/app/Activity;Ljava/util/Map;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel$NearbyDevice;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel$NearbyDevice;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel$NearbyDevice;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter$2;

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->in_app_device_list_item:I

    invoke-direct {p2, p0, p1, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$layout;->in_app_device_list_dialog_layout:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$id;->in_app_device_list_view:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter$3;

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter$3;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;[Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object p1
.end method

.method private showDeviceListDialog(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel$NearbyDevice;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->in_app_device_list_dialog_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;->getView(Landroid/app/Activity;Ljava/util/Map;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p2, Lcom/samsung/android/support/senl/nt/composer/R$string;->dialog_cancel:I

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;)V

    invoke-virtual {v0, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;->mDialog:Landroidx/appcompat/app/AlertDialog;

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->toolbar:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/AlertDialogWrapper$AnchorType;->TOOLBAR:I

    invoke-static {p2, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/AlertDialogWrapper;->setAnchorView(Landroid/app/Dialog;Landroid/view/View;I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;->TAG:Ljava/lang/String;

    const-string v0, "showDeviceListDialog# show"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "748"

    const-string v0, "7065"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$dimen;->in_app_device_list_dialog_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;->TAG:Ljava/lang/String;

    const-string v1, "dismissDeviceListDialog#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/inapp/common/InAppLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/base/common/inapp/model/NearbyMyDevicesModel$NearbyDevice;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;->mMenuParent:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;

    aget-object p1, p1, p2

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/DialogContract$IParent;->startInAppCollaboration(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/dialog/InAppDialogPresenter;->showDeviceListDialog(Landroid/app/Activity;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method
