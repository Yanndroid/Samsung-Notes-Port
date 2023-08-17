.class public Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MainHandoffManager"

.field private static mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;


# instance fields
.field private final mBackStackDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;",
            ">;"
        }
    .end annotation
.end field

.field private final mTopActivityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVersionManager:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffVersionManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mLastDataMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mBackStackDataMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mTopActivityMap:Ljava/util/HashMap;

    return-void
.end method

.method private disableHandoff(I)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->disableHandoff()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mLastDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mBackStackDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mLastDataMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mBackStackDataMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    sput-object p1, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;

    :cond_0
    return-void
.end method

.method private enableMainListHandoff(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V
    .locals 10

    const-string v0, "MainHandoffManager"

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->isHandoffEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getActivityType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getActionType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "activity_type"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "action"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "search"

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    :try_start_1
    const-string v4, "old_note"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v8

    goto :goto_0

    :sswitch_1
    const-string v4, "gcs_note"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v7

    goto :goto_0

    :sswitch_2
    const-string v4, "folder_move"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_3
    const-string v4, "tag_note"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v9

    goto :goto_0

    :sswitch_4
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v6

    :cond_1
    :goto_0
    if-eqz v2, :cond_7

    if-eq v2, v9, :cond_5

    if-eq v2, v8, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableMainListHandoff# unexpected action: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getSearchText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_3
    const-string v2, "group"

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "space"

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getSpaceId()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_4
    const-string v2, "category"

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getCategoryUuid()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getSelectedTags()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    :cond_6
    const-string v3, "tags"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_7
    const-string v2, "folder"

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getFolderUuid()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableMainListHandoff# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->enableHandoff(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x36059a58 -> :sswitch_4
        -0x2d89a689 -> :sswitch_3
        0x6976d02 -> :sswitch_2
        0xa4db01a -> :sswitch_1
        0xbd67b0a -> :sswitch_0
    .end sparse-switch
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getTags(Ljava/util/List;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesTagEntity;->getNormalizeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getValidSelectedTags(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 6
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    const-string v1, "tags"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentTagRepository()Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/repository/tag/NotesTagRepository;->getAll()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->getTags(Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValidSelectedTags# JSONException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MainHandoffManager"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private openNoteByHandoffActionFolderMove(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->canStartMainList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    const-string v1, "mode"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "folderUuid"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private openNoteByHandoffActionOldList(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->canStartOldList()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNoteListClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private openNoteByHandoffActionOldNote(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->canStartOldNote(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p1, 0x14

    const-string p2, "mode"

    invoke-virtual {p5, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x7

    const-string p2, "caller"

    invoke-virtual {p5, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "key_category_uuid"

    invoke-virtual {p5, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->canStartOldList()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/oldnote/OldNoteAccessHandler;->getOldNotesClass()Ljava/lang/Class;

    move-result-object p3

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNoteListClass()Ljava/lang/Class;

    move-result-object p3

    :goto_0
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method private openNoteByHandoffActionSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "mode"

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "memo_fragment_key_search"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private openNoteByHandoffActionTagNote(Landroid/app/Activity;Landroid/content/Intent;Ljava/util/Set;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Intent;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->canStartTagNote()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x11

    const-string p2, "mode"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x7

    const-string p2, "caller"

    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    check-cast p3, Ljava/io/Serializable;

    const-string p1, "key_selected_tags"

    invoke-virtual {p4, p1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNoteListClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private sendHandoffAction(ILcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V
    .locals 6

    if-eqz p2, :cond_7

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->isHandoffEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mTopActivityMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getActivityType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mLastDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "MainHandoffManager"

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getLastHandoffCaller()I

    move-result v1

    if-nez v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendHandoffAction# same HandoffAction is called, sync enabled: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object p2

    invoke-virtual {p2}, Ln/a;->o()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "sendHandoffAction# "

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getActionType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "search"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "[]"

    if-nez v1, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getActionType()Ljava/lang/String;

    move-result-object v1

    const-string v4, "tag_note"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->isSameAction(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mBackStackDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "savePrevHandoffAction# save mBackStackData: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendHandoffAction# taskId: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mLastDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mLastDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mBackStackDataMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    invoke-virtual {v1, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePrevHandoffAction# restore LastData as BackStackData: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->enableMainListHandoff(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V

    :cond_7
    :goto_4
    return-void
.end method

.method private updateDefaultHandoffData(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Main"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->setActivityType(Ljava/lang/String;)V

    const-string v0, "folder_move"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->setActionType(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->setFolderUuid(Ljava/lang/String;)V

    return-void
.end method

.method private updateHandoffDataCanNotStartGCSList(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->canStartGCSList()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->updateDefaultHandoffData(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V

    return-void
.end method

.method private updateHandoffDataCanNotStartGCSNote(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getFolderUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->canStartGCSNote(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->canStartGCSList()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GCSList"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->setActivityType(Ljava/lang/String;)V

    const-string v0, "gcs_list"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->setActionType(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->updateDefaultHandoffData(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V

    :goto_0
    return-void
.end method

.method private updateHandoffDataCanNotStartMainList(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getFolderUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->canStartMainList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->setFolderUuid(Ljava/lang/String;)V

    return-void
.end method

.method private updateHandoffDataCanNotStartOldList(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->canStartOldList()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->updateDefaultHandoffData(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V

    return-void
.end method

.method private updateHandoffDataCanNotStartOldNote(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getActionType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getCategoryUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->canStartOldNote(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->canStartOldList()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OldList"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->setActivityType(Ljava/lang/String;)V

    const-string v0, "old_list"

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->setActionType(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->updateDefaultHandoffData(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V

    :goto_0
    return-void
.end method

.method private updateHandoffDataCanNotStartTagNote(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->canStartTagNote()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->updateDefaultHandoffData(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V

    return-void
.end method


# virtual methods
.method public canStartGCSList()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getPreferenceMDESupported()Z

    move-result v0

    return v0
.end method

.method public canStartGCSNote(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareReadResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesShareBaseReadResolver;->getGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getPreferenceMDESupported()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public canStartMain(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "old_note"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "old_list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "gcs_note"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "gcs_list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "folder_move"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "folder_list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "tag_note"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "tag_list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v3, v2

    goto :goto_0

    :sswitch_8
    const-string v0, "search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v3, v1

    :goto_0
    const-string v0, "MainHandoffManager"

    packed-switch v3, :pswitch_data_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected actionType: "

    goto :goto_1

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->updateHandoffDataCanNotStartOldNote(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V

    return v2

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->updateHandoffDataCanNotStartOldList(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V

    return v2

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->updateHandoffDataCanNotStartGCSNote(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V

    return v2

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->updateHandoffDataCanNotStartGCSList(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V

    return v2

    :pswitch_4
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->updateHandoffDataCanNotStartMainList(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V

    return v2

    :pswitch_5
    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->updateHandoffDataCanNotStartTagNote(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V

    return v2

    :pswitch_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removed actionType: "

    :goto_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :pswitch_7
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x36059a58 -> :sswitch_8
        -0x2d8aa5dd -> :sswitch_7
        -0x2d89a689 -> :sswitch_6
        0x696e1cf -> :sswitch_5
        0x6976d02 -> :sswitch_4
        0xa4cb0c6 -> :sswitch_3
        0xa4db01a -> :sswitch_2
        0xbd57bb6 -> :sswitch_1
        0xbd67b0a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public canStartMainList(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/FeatureUtils;->isPreDefinedFolderUuid(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const-string v0, "lock:///"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesLockDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesLockDocumentRepository;->getAllLockedDataCount(I)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const-string v0, "favorite:///"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getFavoriteItemCount(I)I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    :cond_3
    const-string v0, "recentlyImported:///"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object p1

    new-instance v0, Landroidx/sqlite/db/SimpleSQLiteQuery;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/RecentlyImported;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/RecentlyImported;-><init>()V

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/smartfilter/RecentlyImported;->getSelection()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->rawQuery(Landroidx/sqlite/db/SimpleSQLiteQuery;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_4
    return v1

    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getCategoryEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1
.end method

.method public canStartOldList()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesOldDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesOldDocumentRepository;->getAll_OldNotesCount(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public canStartOldNote(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const-string p1, "old_converted_notes"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createNotesConvertedDocumentRepository()Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/data/repository/converted/NotesConvertedDocumentRepository;->getAll_ConvertedCount(I)I

    move-result v2

    if-gtz v2, :cond_3

    :cond_1
    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getCategoryEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method

.method public canStartTagNote()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getAllWithTag(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getHandoffData(Lorg/json/JSONObject;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;
    .locals 6
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "MainHandoffManager"

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mVersionManager:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffVersionManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffVersionManager;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffVersionManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mVersionManager:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffVersionManager;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mVersionManager:Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffVersionManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffVersionManager;->revisionOperation(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;-><init>()V

    :try_start_0
    const-string v2, "activity_type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sync_on"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->setActivityType(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->setActionType(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;

    invoke-virtual {v1, v4}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->setSyncEnabledOnSender(Z)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "search"

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    :try_start_1
    const-string v4, "FolderList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v4, "GCSList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_2
    const-string v4, "OldList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_3
    const-string v4, "old_note"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v4, "gcs_note"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_5
    const-string v4, "TagList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v2, 0x8

    goto :goto_0

    :sswitch_6
    const-string v4, "folder_move"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_7
    const-string v4, "tag_note"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_8
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x4

    :cond_2
    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removed actionType: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionType: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->setSearchText(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;

    move-result-object p1

    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->build()Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    goto :goto_4

    :pswitch_3
    const-string v2, "group"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->setGroupId(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->build()Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    const-string v2, "space"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->setSpaceId(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;

    move-result-object p1

    goto :goto_2

    :pswitch_4
    const-string v2, "category"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->setCategoryUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;

    move-result-object p1

    goto :goto_2

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->getValidSelectedTags(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->setSelectedTags(Ljava/util/Set;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;

    move-result-object p1

    goto :goto_2

    :pswitch_6
    const-string v2, "folder"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->setFolderUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;

    move-result-object p1

    goto :goto_2

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected actionType: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHandoffData#JSONException# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->build()Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x36059a58 -> :sswitch_8
        -0x2d89a689 -> :sswitch_7
        0x6976d02 -> :sswitch_6
        0x6e11f38 -> :sswitch_5
        0xa4db01a -> :sswitch_4
        0xbd67b0a -> :sswitch_3
        0x10fcff45 -> :sswitch_2
        0x22e4e435 -> :sswitch_1
        0x4573364c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleHandoffAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->isHandoffAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->setActivityType(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->setActionType(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->build()Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->sendHandoffAction(ILcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isHandoffAction(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.app.notes.handoff.ACTION_HANDOFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public openNoteByHandoff(Landroid/app/Activity;Landroid/os/Bundle;)I
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v1, "handoffData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    const-string v1, "folder_move"

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->setActionType(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->setFolderUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;->build()Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    move-result-object v0

    :cond_2
    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v2

    invoke-virtual {v2}, Ln/a;->o()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {v2, v3, p1, p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->showDialogDisableSyncTurnOn(Ljava/lang/ref/WeakReference;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->isSyncEnabledOnSender()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->showTurnOnSyncToast()V

    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getActionType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v2, "search"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "openNoteByHandoff# unexpected actionType: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MainHandoffManager"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getFolderUuid()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->openNoteByHandoffActionFolderMove(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->getSearchText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->openNoteByHandoffActionSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    const/4 p1, 0x7

    return p1
.end method

.method public releaseHandoffAction(Landroid/app/Activity;)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->isHandoffAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getLastHandoffCaller()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseHandoffAction, lastHandoffCaller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainHandoffManager"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/mcf/handoff/HandoffUtils;->getActivityTypeFromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->mTopActivityMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->disableHandoff(I)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "releaseHandoffAction, skip"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public sendHandoffAction(IILcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq v0, p2, :cond_6

    const/4 v0, 0x5

    if-ne v0, p2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x11

    if-ne v0, p2, :cond_2

    const-string p2, "tag_note"

    goto :goto_1

    :cond_2
    const/16 v0, 0x14

    if-ne v0, p2, :cond_3

    const-string p2, "old_note"

    goto :goto_1

    :cond_3
    const/16 v0, 0xa

    if-ne v0, p2, :cond_4

    const-string p2, "gcs_note"

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    if-ne v0, p2, :cond_5

    const-string p2, "search"

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    :goto_0
    const-string p2, "folder_move"

    :goto_1
    invoke-virtual {p3, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->setActionType(Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->sendHandoffAction(ILcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)V

    return-void
.end method
