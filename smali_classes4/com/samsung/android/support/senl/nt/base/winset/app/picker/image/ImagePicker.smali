.class public Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter;,
        Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$OnItemClickedListener;
    }
.end annotation


# static fields
.field private static final CAMERA_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.camera"

.field private static final GALLERY_MULTI_PICK:Ljava/lang/String; = "multi-pick"

.field private static final GALLERY_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.gallery3d"

.field private static final GALLERY_SELECTED_COUNT:Ljava/lang/String; = "selectedCount"

.field private static final GALLERY_SELECTED_ITEMS:Ljava/lang/String; = "selectedItems"

.field private static final LAST_PICKER_SELECTED_PACKAGE:Ljava/lang/String; = "lastPickerSelectedPackage_"

.field private static final LAST_PICKER_SELECTED_PACKAGE_NUM:Ljava/lang/String; = "lastPickerSelectedPackageNum"

.field private static final MY_FILES_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.myfiles"

.field public static final REQUEST_CODE_CAMERA:I = 0x7531

.field public static final REQUEST_CODE_GALLERY:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "ImagePicker"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mGridView:Landroid/widget/GridView;

.field private mIsMultiple:Z

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mOnItemClickedListener:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$OnItemClickedListener;

.field private mRecentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mAppList:Ljava/util/List;

    return-object p0
.end method

.method private addAppList(ILandroid/content/Intent;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V
    .locals 7

    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/content/Intent;

    new-instance p2, Landroid/content/ComponentName;

    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p2, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, v0, v6, p4}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getApplicationIconForIconTray(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fail getApplicationIconForIconTray: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImagePicker"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p2, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;

    invoke-virtual {p4, p3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, p2

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mAppList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mAppList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private addRecentList(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addRecentList# packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImagePicker"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mRecentList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->initRecentAppList()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mRecentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mRecentList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mRecentList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mRecentList:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mRecentList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->release()V

    return-void
.end method

.method private getAppIntent(I)Landroid/content/Intent;
    .locals 2

    sget v0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->APP_CAMERA:I

    if-ne p1, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->APP_GALLERY:I

    if-ne p1, v0, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "image/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mIsMultiple:Z

    if-eqz v0, :cond_1

    const-string v0, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "multi-pick"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    return-object p1

    :cond_2
    sget v0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->APP_MORE_APPS:I

    if-ne p1, v0, :cond_3

    new-instance p1, Landroid/content/Intent;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private initAppList(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->setupAppList(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->sortAppList()V

    return-void
.end method

.method private initRecentAppList()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mRecentList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mRecentList:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    const-string v0, "ImagePicker"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "lastPickerSelectedPackageNum"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_1
    if-ge v3, v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mRecentList:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastPickerSelectedPackage_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRecentAppList# RecentList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mRecentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loadApplicationList(I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->getAppIntent(I)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->APP_MORE_APPS:I

    if-ne p1, v3, :cond_1

    sget p1, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->APP_GALLERY:I

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->addAppList(ILandroid/content/Intent;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private release()V
    .locals 2

    const-string v0, "ImagePicker"

    const-string v1, "release#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mGridView:Landroid/widget/GridView;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mAdapter:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mDialog:Landroidx/appcompat/app/AlertDialog;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mFragment:Landroidx/fragment/app/Fragment;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->saveRecentAppList()V

    return-void
.end method

.method private saveRecentAppList()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mRecentList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveRecentAppList# RecentList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mRecentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImagePicker"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mRecentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "lastPickerSelectedPackageNum"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mRecentList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lastPickerSelectedPackage_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mRecentList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setupAppList(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupAppList# start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImagePicker"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mAppList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mAppList:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    sget v0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->APP_CAMERA:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->loadApplicationList(I)V

    goto :goto_1

    :cond_1
    sget p1, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->APP_GALLERY:I

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->loadApplicationList(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->isSecureFolderMode()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->APP_MORE_APPS:I

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->loadApplicationList(I)V

    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setupAppList# end, App count : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showDialog(Landroid/view/View;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget v2, Lcom/samsung/android/support/senl/nt/base/R$layout;->image_picker_layout:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)V

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mAdapter:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter;

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$id;->app_chooser:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mAdapter:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$AttachMenuAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mGridView:Landroid/widget/GridView;

    new-instance v4, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$2;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$id;->no_item_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mGridView:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v5

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mDialog:Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$3;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mDialog:Landroidx/appcompat/app/AlertDialog;

    sget v1, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/AlertDialogWrapper$AnchorType;->TOOLBAR:I

    invoke-static {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/popover/AlertDialogWrapper;->setAnchorView(Landroid/app/Dialog;Landroid/view/View;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method private sortAppList()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mAppList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->initRecentAppList()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mAppList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$1;-><init>(Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startApplication(Landroid/app/Activity;Landroid/content/Intent;ILcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startApplication, code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImagePicker"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7531

    if-ne p3, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mOnItemClickedListener:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$OnItemClickedListener;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$OnItemClickedListener;->printMemory()V

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mOnItemClickedListener:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$OnItemClickedListener;

    invoke-interface {p1, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$OnItemClickedListener;->setRequestCode(I)V

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->addRecentList(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startApplication, exception."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;->deleteFileForTakePicture()V

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;->clear()V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mOnItemClickedListener:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$OnItemClickedListener;

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$OnItemClickedListener;->setRequestCode(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startApplication(Landroid/content/Intent;ILcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->startApplication(Landroid/app/Activity;Landroid/content/Intent;ILcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;)V

    return-void
.end method


# virtual methods
.method public getUrisFromResult(Landroid/content/Intent;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    const-string v1, "ImagePicker"

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getUrisFromResult# "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    if-ge v2, p2, :cond_4

    invoke-virtual {p1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p2, "selectedCount"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUrisFromResult# selectedCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p2, :cond_3

    const-string p2, "selectedItems"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-object v0
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onItemClick(I)V
    .locals 6

    const/16 v0, 0x7530

    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mAppList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->getAppType()I

    move-result v3

    sget v4, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->APP_GALLERY:I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v3, v4, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->startApplication(Landroid/content/Intent;ILcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->getAppType()I

    move-result v0

    sget v3, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->APP_CAMERA:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/framework/support/PolicyManager;->getCameraDisabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;-><init>()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v1, 0x7531

    const/16 v2, 0x8

    :try_start_3
    invoke-static {v2}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;->getTakePictureUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "output"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->startApplication(Landroid/content/Intent;ILcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;->setPendingIndent(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-static {p1, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_2

    :catch_1
    move-exception p1

    move v5, v1

    move-object v1, v0

    move v0, v5

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :catch_2
    move-exception p1

    move v0, v2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick ActivityNotFoundException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ImagePicker"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mOnItemClickedListener:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$OnItemClickedListener;

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$OnItemClickedListener;->onItemClicked(ILcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;)V

    return-void
.end method

.method public onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[ILcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;)Z
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x7531

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1, p4, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->verifyRequestResult(Landroid/app/Activity;[I[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;->getTakenPictureUri()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-virtual {p5, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;->getTakePictureUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;->getPendingIntent()Landroid/content/Intent;

    move-result-object p3

    const-string p4, "output"

    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;->getPendingIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0, p5}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->startApplication(Landroid/app/Activity;Landroid/content/Intent;ILcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;->deleteFileForTakePicture()V

    invoke-virtual {p5}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/PendingData;->clear()V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public show(Landroidx/fragment/app/Fragment;Landroid/view/View;IZLcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$OnItemClickedListener;Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1
    .param p5    # Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$OnItemClickedListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mActivity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mOnItemClickedListener:Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker$OnItemClickedListener;

    iput-object p6, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iput-boolean p4, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mIsMultiple:Z

    invoke-direct {p0, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->initAppList(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mAppList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->isUPSM(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/base/R$string;->app_chooser_upsm_mode_add_gallery_or_camera_to_the_home_screen:I

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/Object;

    iget-object p6, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$string;->gallery_title:I

    invoke-virtual {p6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p6

    aput-object p6, p5, p3

    iget-object p6, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$string;->camera_title:I

    invoke-virtual {p6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p6

    aput-object p6, p5, p4

    invoke-virtual {p1, p2, p5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mActivity:Landroid/app/Activity;

    invoke-static {p2, p1, p4}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/emergencymode/EmergencyManagerCompat;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/base/R$string;->app_chooser_emergency_mode_unable_to_use_attach:I

    new-array p5, p4, [Ljava/lang/Object;

    iget-object p6, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mActivity:Landroid/app/Activity;

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$string;->app_chooser_attach:I

    invoke-virtual {p6, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p6

    aput-object p6, p5, p3

    invoke-virtual {p1, p2, p5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->mAppList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, p4, :cond_3

    invoke-virtual {p0, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->onItemClick(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->showDialog(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "ImagePicker"

    const-string p2, "show# success!!"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p4

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/picker/image/ImagePicker;->release()V

    return p3
.end method
