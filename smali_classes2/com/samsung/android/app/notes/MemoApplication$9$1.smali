.class Lcom/samsung/android/app/notes/MemoApplication$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/MemoApplication$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/app/notes/MemoApplication$9;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/MemoApplication$9;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/MemoApplication$9$1;->this$1:Lcom/samsung/android/app/notes/MemoApplication$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/notes/MemoApplication$9$1;->this$1:Lcom/samsung/android/app/notes/MemoApplication$9;

    iget-object v1, v1, Lcom/samsung/android/app/notes/MemoApplication$9;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-static {v1}, Lcom/samsung/android/app/notes/MemoApplication;->a(Lcom/samsung/android/app/notes/MemoApplication;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->getValidCacheFiles(Landroid/content/Context;Z)Ljava/util/List;

    const-string v0, "APP_UPDATE_PREFERENCE"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "CACHE_RESAVE_TASK_IN_PROGRESS"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getStartType()Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;->FirstTimeAfterVersionUpdate:Lcom/samsung/android/support/senl/nt/app/updater/version/VersionChecker$StartType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication$9$1;->this$1:Lcom/samsung/android/app/notes/MemoApplication$9;

    iget-object v0, v0, Lcom/samsung/android/app/notes/MemoApplication$9;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentServiceIntent;->restoreCaches(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication$9$1;->this$1:Lcom/samsung/android/app/notes/MemoApplication$9;

    iget-object v0, v0, Lcom/samsung/android/app/notes/MemoApplication$9;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/service/NotesWordDocumentServiceIntent;->removeCacheAndResave(Landroid/content/Context;)V

    :goto_1
    return-void
.end method
