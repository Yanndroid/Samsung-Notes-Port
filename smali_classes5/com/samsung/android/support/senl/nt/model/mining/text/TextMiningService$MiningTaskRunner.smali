.class Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService$MiningTaskRunner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MiningTaskRunner"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService$MiningTaskRunner;->this$0:Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;Lcom/samsung/android/support/senl/nt/model/mining/text/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService$MiningTaskRunner;-><init>(Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-string v0, "TextMiningPref"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "TextResetList"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "TextMiningService"

    const-string v5, "text mining - start"

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningManager;

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService$MiningTaskRunner;->this$0:Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;

    invoke-virtual {v6}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningManager;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningManager;->createTemporaryDatabase()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStartCommand, data size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    const-string v8, "<@sep#1>"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x2

    if-ge v8, v9, :cond_2

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService$MiningTaskRunner;->this$0:Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;

    invoke-virtual {v8}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    aget-object v9, v7, v6

    const/4 v10, 0x1

    aget-object v7, v7, v10

    invoke-virtual {v5, v8, v9, v7}, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningManager;->execute(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v9, v7, v2

    const-wide/16 v11, 0x2710

    cmp-long v9, v9, v11

    if-ltz v9, :cond_0

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningManager;->migrateToDocumentTable()V

    move-wide v2, v7

    goto :goto_0

    :cond_3
    const-string v1, "text mining - end"

    invoke-static {v4, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningManager;->migrateToDocumentTable()V

    invoke-virtual {v5}, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningManager;->dropTemporaryTable()V

    invoke-static {v0, v6}, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;->a(Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;Z)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService$MiningTaskRunner;->this$0:Lcom/samsung/android/support/senl/nt/model/mining/text/TextMiningService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to create temporary DB, e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
