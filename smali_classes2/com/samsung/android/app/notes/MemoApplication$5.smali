.class Lcom/samsung/android/app/notes/MemoApplication$5;
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

    iput-object p1, p0, Lcom/samsung/android/app/notes/MemoApplication$5;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "MemoApplication"

    const-string v1, "init TAG_MEMO_APPLICATION_BASE_SETUP"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Settings"

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v2

    const-string v3, "settings_composer_bg_invert_for_pdf"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gtz v2, :cond_0

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putLong(Ljava/lang/String;J)V

    const-string v1, "init TAG_MEMO_APPLICATION_BASE_SETUP# set ComposerBgInvertBaseTimeForPDF"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/updater/UpdateManager;->handleAppUpdate()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication$5;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-static {v0}, Lcom/samsung/android/app/notes/MemoApplication;->a(Lcom/samsung/android/app/notes/MemoApplication;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->setupFileLogger(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication$5;->this$0:Lcom/samsung/android/app/notes/MemoApplication;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->setup(Landroid/app/Application;)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;->getInstance()Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/jobscheduler/NotesJobService;->registerJobs()V

    return-void
.end method
