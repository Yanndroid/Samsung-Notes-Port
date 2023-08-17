.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;
.source "SourceFile"


# static fields
.field private static final AGIF_EDITOR_ACTION:Ljava/lang/String; = "com.sec.android.mimage.photoretouching.motionphoto"

.field private static final MIN_SUPPORTED_AGIF_VERSION_CODE:I = 0x128516c1

.field private static final MIN_SUPPORTED_PHOTO_VERSION_CODE:I = 0x1203bd79

.field private static final PHOTO_EDITOR_ACTIVITY:Ljava/lang/String; = "com.sec.android.mimage.photoretouching.SPEActivity"

.field private static final PHOTO_EDITOR_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private final mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

.field private final mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field private final mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

.field private final mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ContextMenuPhotoEditor"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getObjectManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->getComposerModel()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/ControllerManager;->getTaskController()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->startImageEditor(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private clearImageStorageDir()V
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;->getDefaultCallback()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)Z

    return-void
.end method

.method private createAgifEditorIntent()Landroid/content/Intent;
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "createAgifEditorIntent#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.mimage.photoretouching.motionphoto"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.mimage.photoretouching"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private createPhotoEditorIntent()Landroid/content/Intent;
    .locals 4

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "createPhotoEditorIntent#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.mimage.photoretouching"

    const-string v3, "com.sec.android.mimage.photoretouching.SPEActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "service"

    const-string v2, "spe_draw"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "otherapps_service"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private getEditorIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->isAgif(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->createAgifEditorIntent()Landroid/content/Intent;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->createPhotoEditorIntent()Landroid/content/Intent;

    move-result-object p3

    :goto_0
    const-string v0, "filepath"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "notes_service"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "notes_objectId"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x3

    invoke-virtual {p3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;->mActivity:Landroid/app/Activity;

    const-string v1, "com.sec.android.mimage.photoretouching"

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_1
    return-object p3
.end method

.method private getFindSourceImageObject(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDoc()Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor$2;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;)V

    invoke-static {v0, v1, v2, p1, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectFindUtil;->getObject(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;IILjava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/object/ObjectFindUtil$Finder;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object p1

    return-object p1
.end method

.method private getPhotoEditorPackageInfo(Z)Landroid/content/pm/PackageInfo;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.sec.android.mimage.photoretouching"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x128516c1

    goto :goto_0

    :cond_1
    const p1, 0x1203bd79

    :goto_0
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le p1, v2, :cond_2

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhotoEditorPackageInfo# minSupportedVersionCode - minSupport:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", editor version:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->TAG:Ljava/lang/String;

    const-string v0, "getPhotoEditorPackageInfo# info is null or applicationInfo is not enabled"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->TAG:Ljava/lang/String;

    const-string v2, "getPhotoEditorPackageInfo# packageName:com.sec.android.mimage.photoretouching"

    invoke-static {v0, v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private isAgif()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedSafeObjectList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->TAG:Ljava/lang/String;

    const-string v2, "isAgif# path is empty"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->isAgif(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method private isAgif(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private startImageEditor(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->TAG:Ljava/lang/String;

    const-string v1, "startImageEditor"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "startImageEditor# mActivity is null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->getEditorIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;->mActivity:Landroid/app/Activity;

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->ImageEditor:Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->getId()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getComposerState()Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;

    move-result-object p2

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerRequestCode;->getId()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerState;->setLastRequestCode(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    move v2, p1

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startImageEditor failed e="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p2

    sget-object p3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startImageEditor not founded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", e="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v2
.end method


# virtual methods
.method public addMenu(Landroid/view/Menu;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->isAgif()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_ctx_menu_agif_editor:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_ctx_menu_photo_editor:I

    :goto_0
    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;->CONTEXT_MENU_ID_PHOTO_EDITOR:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;->getId()I

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuConstants$ContextMenuCode;->getId()I

    move-result v2

    invoke-interface {p1, v1, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->canShow()Z

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public canShow()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->mModeManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedSafeObjectList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->TAG:Ljava/lang/String;

    const-string v2, "canShow# path is empty"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->isPhotoEditorEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public executeMenu()V
    .locals 6

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executePhotoEditor#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedSafeObjectList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->getSelectedSafeObjectList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->setClickedObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/ComposerViewPresenter;->requestReadyForSave()V

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v4, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor$InputValues;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenObjectImage;)V

    new-instance v4, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor$1;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;Lcom/samsung/android/sdk/pen/document/SpenObjectImage;)V

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "executePhotoEditor# to get WRITE_EXTERNAL_STORAGE permission"

    invoke-static {v0, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuItem;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v5, "Composer"

    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/16 v5, 0x7e

    invoke-static {v0, v5, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;-><init>()V

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->setPendingTask(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->mTaskController:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskPhotoEditor;-><init>()V

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/TaskController;->execute(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$Callback;Z)Z

    return-void
.end method

.method public isLockRelated()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPhotoEditorEnabled(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->isAgif(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->getPhotoEditorPackageInfo(Z)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string p1, "output"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->clearImageStorageDir()V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->TAG:Ljava/lang/String;

    const-string p2, "onActivityResult# outputImageFile not exist"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "notes_objectId"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->getFindSourceImageObject(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    instance-of v1, v0, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->getOriginalImagePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->getOriginalRect()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->setCropRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->setOriginalRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->setImage(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    const-string p2, "onActivityResult# hasLassoCrop is true."

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->setOriginalImage(Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->commitHistory()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->clearImageStorageDir()V

    return-void

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->clearImageStorageDir()V

    sget-object p1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->TAG:Ljava/lang/String;

    const-string p2, "onActivityResult# imageObject is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->clearImageStorageDir()V

    sget-object p2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/contextmenu/ContextMenuPhotoEditor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult# resultCode failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " or data is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
