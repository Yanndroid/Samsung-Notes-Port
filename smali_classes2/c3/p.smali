.class public Lc3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc3/p$c;,
        Lc3/p$b;,
        Lc3/p$a;
    }
.end annotation


# static fields
.field public static a:Landroid/content/Context;

.field public static final b:Ljava/text/SimpleDateFormat;

.field public static c:Lc3/p$b;

.field public static d:Lc3/p$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MM-dd_HH-mm-ss-SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lc3/p;->b:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static bridge synthetic a()Lc3/p$b;
    .locals 1

    sget-object v0, Lc3/p;->d:Lc3/p$b;

    return-object v0
.end method

.method public static bridge synthetic b()Lc3/p$b;
    .locals 1

    sget-object v0, Lc3/p;->c:Lc3/p$b;

    return-object v0
.end method

.method public static bridge synthetic c(Lc3/p$b;)V
    .locals 0

    sput-object p0, Lc3/p;->d:Lc3/p$b;

    return-void
.end method

.method public static bridge synthetic d(Lc3/p$b;)V
    .locals 0

    sput-object p0, Lc3/p;->c:Lc3/p$b;

    return-void
.end method

.method public static bridge synthetic e(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lc3/p;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lc3/p;->j(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "SyncLoggerEnabled"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static g(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "{"

    const-string v4, "\n "

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "}"

    const-string v4, "\n\n"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lc3/p;->j(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "SyncLoggerEnabled"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1d

    const-string v2, "android_id"

    if-lt v0, v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    :goto_0
    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceId() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SyncLogger"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "None"

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "SyncLogger"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 2

    sput-object p0, Lc3/p;->a:Landroid/content/Context;

    invoke-static {p0}, Lc3/p;->j(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "SyncLoggerEnabled"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime()J

    move-result-wide v0

    invoke-static {}, Lc3/r;->a()Lc3/r;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lc3/r;->c(J)V

    invoke-static {}, Lc3/r;->a()Lc3/r;

    move-result-object v2

    invoke-virtual {v2, p0, p1, v0, v1}, Lc3/r;->d(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lc3/r;->a()Lc3/r;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime()J

    move-result-wide v1

    invoke-virtual {v0, p0, p1, v1, v2}, Lc3/r;->d(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lc3/r;->a()Lc3/r;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime()J

    move-result-wide v1

    invoke-virtual {v0, p0, p1, v1, v2}, Lc3/r;->e(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lc3/r;->a()Lc3/r;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/TimeManager;->getCurrentTime()J

    move-result-wide v1

    invoke-virtual {v0, p0, p1, v1, v2}, Lc3/r;->f(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static p()Lc3/p$c;
    .locals 1

    new-instance v0, Lc3/p$c;

    invoke-direct {v0}, Lc3/p$c;-><init>()V

    return-object v0
.end method

.method public static q(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Lc3/p;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v2

    const-string v3, "document"

    invoke-virtual {v2, v3}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lc3/p$c;->d(Ljava/lang/String;)Lc3/p$c;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->dumpDocument()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lc3/p;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object v2

    invoke-virtual {v2, p0}, Lc3/p$c;->m(Landroid/content/Context;)V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v2

    const-string v3, "mappedDocument"

    invoke-virtual {v2, v3}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v2

    invoke-virtual {v2, p1}, Lc3/p$c;->d(Ljava/lang/String;)Lc3/p$c;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;->dumpMappedDocument()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lc3/p;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc3/p$c;->m(Landroid/content/Context;)V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v1

    const-string v2, "syncInfo"

    invoke-virtual {v1, v2}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc3/p$c;->d(Ljava/lang/String;)Lc3/p$c;

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->dumpSyncInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc3/p;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lc3/p$c;->m(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static r(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lc3/p;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lr0/a;

    invoke-direct {v0, p0}, Lr0/a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v1

    const-string v2, "categoryTree"

    invoke-virtual {v1, v2}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc3/p$c;->d(Ljava/lang/String;)Lc3/p$c;

    move-result-object v1

    invoke-virtual {v0}, Lr0/a;->e()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lc3/p;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc3/p$c;->m(Landroid/content/Context;)V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v1

    const-string v2, "categoryTreeClosure"

    invoke-virtual {v1, v2}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc3/p$c;->d(Ljava/lang/String;)Lc3/p$c;

    move-result-object p1

    invoke-virtual {v0}, Lr0/a;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc3/p;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lc3/p$c;->m(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static s(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lc3/p;->k(Landroid/content/Context;)Z

    return-void
.end method

.method public static t(Landroid/content/Context;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Lc3/p;->k(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "SyncLogger"

    const-string/jumbo v2, "verifyFolder"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/app/notes/sync/db/g;

    invoke-direct {v2, v0}, Lcom/samsung/android/app/notes/sync/db/g;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-direct {v3, v0}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/notes/sync/db/g;->i()Ljava/util/Map;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, " is later than "

    const-string v9, " -> no parentId = "

    const-string v10, "1"

    const-string v11, "root"

    const-string v12, "///"

    const-string v13, "\n"

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    iget-object v15, v7, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    iget-object v14, v7, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    sget-object v16, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->UNCATEGORIZED:Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;

    move/from16 v17, v4

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/support/senl/nt/data/common/constants/PredefinedCategory;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v16, v6

    const-string v6, "folder "

    if-eqz v4, :cond_1

    iget-object v4, v7, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    const-string/jumbo v0, "trashed"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is deleted correctly?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move/from16 v4, v17

    :goto_1
    invoke-virtual {v15, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v15, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, v7, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    const-string v10, "deleted"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    iget-wide v9, v0, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    iget-wide v11, v7, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    cmp-long v0, v9, v11

    if-gez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v6, v16

    goto/16 :goto_0

    :cond_6
    move/from16 v17, v4

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->dumpDocument()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".sdoc"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    goto/16 :goto_6

    :cond_7
    invoke-virtual {v6, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_b

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_b

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    goto/16 :goto_6

    :cond_9
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    const-string v15, "note "

    if-nez v14, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v9

    move-object/from16 v16, v10

    :goto_5
    const/4 v4, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v17, v9

    move-object/from16 v16, v10

    iget-wide v9, v14, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->getCategoryServerTimeStamp()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v3, v9, v18

    if-gez v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    :goto_6
    move-object/from16 v17, v9

    move-object/from16 v16, v10

    :cond_c
    :goto_7
    move-object/from16 v10, v16

    move-object/from16 v9, v17

    goto/16 :goto_4

    :cond_d
    if-eqz v4, :cond_e

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "brokenFolder"

    move-object/from16 v2, p0

    invoke-static {v2, v1, v0}, Lc3/p;->w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p1}, Lc3/p;->u(Landroid/content/Context;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public static u(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lc3/p;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lr0/a;

    invoke-direct {v0, p0}, Lr0/a;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v3

    const-string v4, "categoryTree"

    invoke-virtual {v3, v4}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc3/p$c;->d(Ljava/lang/String;)Lc3/p$c;

    move-result-object v3

    invoke-virtual {v0}, Lr0/a;->e()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lc3/p;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object v3

    invoke-virtual {v3, p0}, Lc3/p$c;->m(Landroid/content/Context;)V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v3

    const-string v4, "categoryTreeClosure"

    invoke-virtual {v3, v4}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc3/p$c;->d(Ljava/lang/String;)Lc3/p$c;

    move-result-object v3

    invoke-virtual {v0}, Lr0/a;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc3/p;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc3/p$c;->m(Landroid/content/Context;)V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v0

    const-string v3, "document"

    invoke-virtual {v0, v3}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc3/p$c;->d(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->dumpDocument()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lc3/p;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc3/p$c;->m(Landroid/content/Context;)V

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v0

    const-string v1, "mappedDocument"

    invoke-virtual {v0, v1}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc3/p$c;->d(Ljava/lang/String;)Lc3/p$c;

    move-result-object p1

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesMappedDocumentRepository;->dumpMappedDocument()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc3/p;->g(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lc3/p$c;->m(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static v(Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 1

    invoke-static {p0}, Lc3/p;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lc3/p$c;->g(Z)Lc3/p$c;

    move-result-object p1

    const-string v0, "error"

    invoke-virtual {p1, v0}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lc3/p$c;->m(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static w(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lc3/p;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    invoke-static {}, Lc3/p;->p()Lc3/p$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc3/p$c;->c(Ljava/lang/String;)Lc3/p$c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lc3/p$c;->b(Ljava/lang/String;)Lc3/p$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lc3/p$c;->m(Landroid/content/Context;)V

    return-void
.end method
