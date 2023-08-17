.class public Lm/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "CoeditShareManager"

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->getGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Lu/f;->l(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/social/share/result/SpaceResult;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to requestSpace : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/mobileservice/social/share/result/SpaceResult;->getResult()Lcom/samsung/android/sdk/mobileservice/social/share/Space;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/mobileservice/social/share/result/SpaceResult;->getResult()Lcom/samsung/android/sdk/mobileservice/social/share/Space;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/mobileservice/social/share/Space;->getGroupId()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    const-string p0, "getGroupId, result getResult empty"

    goto :goto_1

    :cond_2
    const-string p0, "getGroupId, result empty"

    :goto_1
    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditGroupReadResolver;->getMemberInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/CoeditResolverContract$MemberInfo;->getMemberName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    new-instance v0, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/a;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/a;->a()Z

    :cond_2
    return-void
.end method

.method public static c(Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;JJLjava/lang/String;)V
    .locals 0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p5, p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->updateFirstOpenedAt(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CS6] updateNoteTitleAndModifiedTime() : spaceId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CoeditShareManager"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v0, v6}, Lu/f;->i(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;->getResult()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;->getStatus()Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;->getStatus()Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;->getCode()I

    move-result v7

    const/16 v8, 0x6b

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;->getStatus()Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;->getAgentCode()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x3fa

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Landroid/content/Intent;

    const-string v7, "COEDIT_SPACE_DELTE_RECEIVED_INTENT_FILTER"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "COEDIT_DELETED_GROUP_ID"

    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "COEDIT_DELETED_SPACE_ID"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "COEDIT_DELETED_GROUP_NAME"

    invoke-virtual {v6, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CS6-1] updateNoteTitleAndModifiedTime() : requestSharedItemSync end, et = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->requestSharedItemList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "[CS6-2] updateNoteTitleAndModifiedTime() : sharedItemListResult is null"

    :goto_0
    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CS6] updateNoteTitleAndModifiedTime() : requestSharedItemSync size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "CoeditPref"

    invoke-static {v4}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v4

    const-string v5, "CoeditPrefKeyReadAllTime"

    const-wide/16 v10, -0x1

    invoke-virtual {v4, v5, v10, v11}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getModifiedTime()J

    move-result-wide v7

    invoke-virtual {v4}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMetaData()Ljava/util/Map;

    move-result-object v5

    const-string/jumbo v6, "uuid"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Ljava/lang/String;

    new-instance v5, Lcom/samsung/android/app/notes/sync/db/s;

    invoke-direct {v5, v2, v15}, Lcom/samsung/android/app/notes/sync/db/s;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/app/notes/sync/db/s;->g()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v4, v6}, Lv/g;->n(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5, v4}, Lv/g;->k(Lcom/samsung/android/app/notes/sync/db/s;Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CS6] updateNoteTitleAndModifiedTime : No change, uuid = "

    goto :goto_4

    :cond_3
    :goto_2
    invoke-virtual {v4}, Lcom/samsung/android/sdk/mobileservice/social/share/SharedItem;->getMemo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lv/d;->l(Ljava/lang/String;)J

    move-result-wide v16

    invoke-virtual {v1, v15}, Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;->getCheckpoint(Ljava/lang/String;)J

    move-result-wide v18

    cmp-long v4, v16, v10

    if-eqz v4, :cond_4

    cmp-long v4, v18, v10

    if-eqz v4, :cond_4

    cmp-long v4, v18, v16

    if-gez v4, :cond_4

    invoke-virtual {v5}, Lcom/samsung/android/app/notes/sync/db/s;->g()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFirstOpendAt()J

    move-result-wide v16

    move-object v4, v1

    move-wide v5, v12

    move-wide v10, v7

    move-wide/from16 v7, v16

    move-object v9, v15

    invoke-static/range {v4 .. v9}, Lm/a;->c(Lcom/samsung/android/support/senl/nt/data/repository/sync/SyncNoteDataRepository;JJLjava/lang/String;)V

    goto :goto_3

    :cond_4
    move-wide v10, v7

    :goto_3
    new-instance v4, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;

    invoke-direct {v4, v15}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14, v10, v11}, Lcom/samsung/android/support/senl/nt/data/sync/resolver/NoteDbResolver;->updateTitleAndModifiedTime(Ljava/lang/String;J)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CS6] updateNoteTitleAndModifiedTime : uuid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CS6] updateNoteTitleAndModifiedTime : No note, uuid = "

    :goto_4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const-wide/16 v10, -0x1

    goto/16 :goto_1

    :cond_6
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CS6-2] updateNoteTitleAndModifiedTime() : requestSharedItemSync failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
