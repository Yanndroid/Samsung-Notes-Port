.class Lcom/samsung/android/app/notes/MemoApplication$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/MemoApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/app/notes/MemoApplication;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/MemoApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/MemoApplication$2;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "MemoApplication"

    const-string v1, "init TAG_COMPOSER_SETUP"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication$2;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-static {v0}, Lcom/samsung/android/app/notes/MemoApplication;->a(Lcom/samsung/android/app/notes/MemoApplication;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->initFilesDirForDeveloperMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication$2;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-static {v0}, Lcom/samsung/android/app/notes/MemoApplication;->b(Lcom/samsung/android/app/notes/MemoApplication;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/notes/MemoApplication$2;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareCacheHelper;->removeCache(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication$2;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/ComposerCacheFileUtil;->trimCache(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication$2;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-static {v0}, Lb1/b;->d(Landroid/content/Context;)V

    return-void
.end method
