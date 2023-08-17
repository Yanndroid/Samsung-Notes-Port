.class public Lcom/samsung/android/support/senl/cm/base/framework/sem/securefolder/SecureFolderCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_CONTAINER_ID:Ljava/lang/String; = "com.sec.knox.moveto.containerId"

.field private static final KEY_CONTAINER_NAME:Ljava/lang/String; = "com.sec.knox.moveto.name"

.field private static final KEY_CONTAINER_TYPE:Ljava/lang/String; = "com.sec.knox.moveto.containerType"

.field private static final SAMSUNG_NOTES_SECURE_FOLDER_ID:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SecureFolderCompatImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported(Landroid/content/Context;Lcom/samsung/android/support/senl/cm/base/framework/securefolder/SecureFolderCompat$SupportChecker;)Z
    .locals 7
    .param p1    # Lcom/samsung/android/support/senl/cm/base/framework/securefolder/SecureFolderCompat$SupportChecker;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "SecureFolderCompatImpl"

    :try_start_0
    const-string v1, "persona"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1, p0}, Lcom/samsung/android/knox/SemPersonaManager;->getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    if-nez v1, :cond_0

    const-string v1, "isSupported, item is null"

    :goto_1
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "com.sec.knox.moveto.containerType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x3ea

    const-string v4, "com.sec.knox.moveto.name"

    const-string v5, "com.sec.knox.moveto.containerId"

    const/4 v6, 0x1

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/securefolder/SecureFolderCompat$SupportChecker;->onContainerTypeSupported(ILjava/lang/String;)V

    :cond_1
    return v6

    :cond_2
    const/16 v3, 0x3eb

    if-ne v2, v3, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/securefolder/SecureFolderCompat$SupportChecker;->onPersonalTypeSupported(ILjava/lang/String;)V

    :cond_3
    return v6

    :cond_4
    const-string v1, "isSupported, unknown type"

    goto :goto_1

    :cond_5
    const-string p0, "isSupported, not exist knox container!"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupported, e:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    const/4 p0, 0x0

    return p0
.end method

.method public static moveFiles(Landroid/content/Context;Ljava/util/List;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "rcp"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/SemRemoteContentManager;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1, p1, p2}, Lcom/samsung/android/knox/SemRemoteContentManager;->moveFiles(ILjava/util/List;Ljava/util/List;I)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "moveFiles, e: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecureFolderCompatImpl"

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0
.end method
