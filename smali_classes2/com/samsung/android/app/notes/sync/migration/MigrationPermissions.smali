.class public Lcom/samsung/android/app/notes/sync/migration/MigrationPermissions;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final EXPORT_SESSION_TIME_EXTRAS:Ljava/lang/String; = "EXPORT_SESSION_TIME"

.field private static final MY_PERMISSIONS_WRITE_EXTERNAL_STORAGE_FOR_BACKUP:I = 0x3ed

.field private static final MY_PERMISSIONS_WRITE_EXTERNAL_STORAGE_FOR_RESOTRE_SF:I = 0x3ee

.field private static final SOURCE_EXTRAS:Ljava/lang/String; = "SOURCE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIntent:Landroid/content/Intent;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "MigrationPermissions"

    invoke-static {v0}, Lx1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/MigrationPermissions;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationPermissions;->mIntent:Landroid/content/Intent;

    const/4 p1, 0x4

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationPermissions;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.intent.action.REQUEST_BACKUP_SAMSUNGNOTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3ed

    :goto_0
    invoke-static {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroid/app/Activity;I[Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationPermissions;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.intent.action.REQUEST_RESTORE_SAMSUNGNOTE_SF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x3ee

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    sget-object p2, Lcom/samsung/android/app/notes/sync/migration/MigrationPermissions;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestPermissionsResult. Req code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3ed

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3ee

    if-eq p1, v0, :cond_0

    const-string p1, "onRequestPermissionsResult. Req code error."

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    aget p1, p3, v1

    if-nez p1, :cond_1

    new-instance p1, Lcom/samsung/android/app/notes/sync/migration/b;

    invoke-direct {p1}, Lcom/samsung/android/app/notes/sync/migration/b;-><init>()V

    const/4 p2, 0x2

    :goto_0
    iget-object p3, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationPermissions;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/app/notes/sync/migration/b;->a(ILandroid/content/Intent;)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_2
    array-length p1, p3

    const/4 p2, 0x1

    if-lez p1, :cond_3

    aget p1, p3, v1

    if-nez p1, :cond_3

    new-instance p1, Lcom/samsung/android/app/notes/sync/migration/b;

    invoke-direct {p1}, Lcom/samsung/android/app/notes/sync/migration/b;-><init>()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationPermissions;->mIntent:Landroid/content/Intent;

    const-string p3, "SOURCE"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    const-string v0, ""

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationPermissions;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, v0

    :goto_2
    iget-object p3, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationPermissions;->mIntent:Landroid/content/Intent;

    const-string v1, "EXPORT_SESSION_TIME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lcom/samsung/android/app/notes/sync/migration/MigrationPermissions;->mIntent:Landroid/content/Intent;

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-static {}, Lc3/n;->f()Lc3/n;

    move-result-object p3

    const/4 v1, 0x4

    invoke-virtual {p3, p1, v0, p2, v1}, Lc3/n;->H(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    :goto_3
    return-void
.end method
