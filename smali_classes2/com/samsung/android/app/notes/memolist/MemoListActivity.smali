.class public Lcom/samsung/android/app/notes/memolist/MemoListActivity;
.super Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker$NoteListSupportOtherApps;


# static fields
.field private static final TAG:Ljava/lang/String; = "MemoListActivity"


# instance fields
.field private mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;-><init>()V

    return-void
.end method

.method private createMainView(Landroid/os/Bundle;Landroid/os/Bundle;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isTabletModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;ILandroid/os/Bundle;Z)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;-><init>(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;ILandroid/os/Bundle;Z)V

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    return-void
.end method

.method private executeAppUpdate()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils;->showProgressDialogFragment()Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialogFragment;

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->progress_dialog_updating:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/util/DialogUtils$ProgressDialogFragment;->setTextInProgressDialog(Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/samsung/android/app/notes/memolist/MemoListActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/notes/memolist/MemoListActivity$1;-><init>(Lcom/samsung/android/app/notes/memolist/MemoListActivity;Landroidx/fragment/app/DialogFragment;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->setOnMigrationListener(Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager$OnMigrationListener;)Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/resolver/migration/DatabaseMigrationManager;->execute()Z

    move-result v0

    return v0
.end method

.method private getCallerThroughAction(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallerThroughAction# action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MemoListActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.notes.action.VIEW_FROM_FINDER"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->openNoteByFinder(Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result p1

    goto/16 :goto_1

    :cond_0
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p2, 0x3e9

    if-ne p4, p2, :cond_6

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->openNoteByBixby(Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result p1

    goto/16 :goto_1

    :cond_1
    const-string p4, "android.intent.action.SEARCH"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const-string v0, "folderUuid"

    const-string v2, "mode"

    if-eqz p4, :cond_2

    const/4 p2, 0x4

    new-instance p4, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQueryParser;

    invoke-direct {p4}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQueryParser;-><init>()V

    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQueryParser;->findUnspecifiedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x3

    invoke-virtual {p3, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p4, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$AllNotes;->UUID:Ljava/lang/String;

    invoke-virtual {p3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "memo_fragment_key_search"

    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move p1, p2

    goto/16 :goto_1

    :cond_2
    const-string p4, "com.samsung.android.app.notes.coedit.action.COEDIT_START"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    const/16 p2, 0xc

    invoke-virtual {p3, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p2, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$Coedit;->UUID:Ljava/lang/String;

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants;->SES_GROUP_ID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object p4, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants;->SES_SPACE_ID:Ljava/lang/String;

    invoke-virtual {p1, p4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants;->SES_GROUP_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getInstance()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/SesCoeditShareReadResolver;->getSpaceIdByGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_3
    const-string v0, "key_space_id"

    invoke-virtual {p3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_group_id"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants;->SES_GROUP_NAME:Ljava/lang/String;

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCallerThroughAction# START_COEDIT, groupId : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", spaceId : "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", groupName : "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p4, "action_convert_sdoc_from_settings"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/16 p1, 0xb

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->isHandoffAction(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffManager;->openNoteByHandoff(Landroid/app/Activity;Landroid/os/Bundle;)I

    move-result p1

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private goToExecuteTypeActivity(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.samsung.android.app.notes.sync.ui.MS_SETTINGS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.app.notes.sync.ui.MS_SIGNOUT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->onExecuteItemSelected(I)V

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "goToExecuteTypeActivity# action : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MemoListActivity"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleBixbyAppLink(Landroid/content/Intent;)I
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/notes/bixby/BixbyManager;->getInstance()Lcom/samsung/android/support/notes/bixby/BixbyManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/notes/memolist/MemoListActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/memolist/MemoListActivity$2;-><init>(Lcom/samsung/android/app/notes/memolist/MemoListActivity;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/notes/bixby/BixbyManager;->registerNoteListActivityBixby2(Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$INoteListActivity;)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/notes/bixby/BixbyManager;->handleAppLink(ILandroid/content/Intent;)I

    move-result p1

    return p1
.end method

.method private needToClearAppData()Z
    .locals 7

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "preference_notice_for_ut"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v3

    invoke-interface {v3}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getReadableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v3

    invoke-interface {v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getVersion()I

    move-result v3

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    sget-object v4, Lcom/samsung/android/support/senl/nt/data/database/core/migration/Migrations;->NEED_TO_BE_CLEARED_DATA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needToClearAppData, recommendedVersion : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", databaseVersion : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", NEED_TO_BE_CLEARED_DATA : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/support/senl/nt/data/database/core/migration/Migrations;->NEED_TO_BE_CLEARED_DATA:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MemoListActivity"

    invoke-static {v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    :cond_2
    return v4
.end method

.method private openNoteByBixby(Landroid/content/Intent;Landroid/os/Bundle;)I
    .locals 6
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "MemoListActivity"

    const-string v1, "openNoteByBixby# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "applink"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "noteId"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v1

    :cond_1
    const/4 v3, 0x0

    if-eqz v1, :cond_7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isUnLockedDocType(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string p1, "openNoteByBixby# data is unlocked! "

    :goto_1
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/notes/bixby/BixbyManager;->getInstance()Lcom/samsung/android/support/notes/bixby/BixbyManager;

    move-result-object v0

    const-string v3, "sdoc_uuid"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "doc_path"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/notes/bixby/BixbyManager;->getBixbyAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BixbyAction"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/notes/bixby/BixbyManager;->getShareType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShareNote"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imageUri"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AddContent"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLockedSdocType(I)Z

    move-result p1

    const/4 v0, 0x5

    const-string v1, "action_verify_from_other_apps"

    if-eqz p1, :cond_4

    const/16 p1, 0x385

    :goto_2
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_4
    if-ne v4, v0, :cond_5

    const/16 p1, 0x64

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    if-le v4, p1, :cond_6

    const/16 p1, 0x6e

    goto :goto_2

    :cond_6
    :goto_3
    return v0

    :cond_7
    :goto_4
    const-string p1, "openNoteByBixby# invalid data! "

    goto :goto_1
.end method

.method private openNoteByFinder(Landroid/content/Intent;Landroid/os/Bundle;)I
    .locals 9

    const-string v0, "intent_extra_data_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/DataManager;->getMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsDeleted()I

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    :cond_1
    new-instance v3, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQueryParser;

    invoke-direct {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQueryParser;-><init>()V

    const-string v4, "query"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQueryParser;->findUnspecifiedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->isSdoc()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isUnLockedDocType(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->startConverterActivity(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v5

    :cond_2
    const-string v4, "sdoc_uuid"

    invoke-virtual {p2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "highlighttext"

    invoke-virtual {p2, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "doc_path"

    invoke-virtual {p2, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    if-nez v3, :cond_5

    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/android/support/senl/nt/app/nativecomposer/ComposerActivity;

    invoke-direct {p2, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/UUIDUtils;->isCoeditUuid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeSpaceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mde_space_id"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeGroupId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mde_group_id"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeOwnerId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mde_owner_id"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "writer_name"

    const-string v3, "test"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeOwnerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lv/b;->b()Lv/b;

    move-result-object v2

    invoke-virtual {v2}, Lv/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lv/f;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x2

    :goto_2
    const-string v1, "account_type"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "lock_account_guid"

    const-string v2, "FROM_SHARED_NOTES_GUID"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    invoke-virtual {p2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.action.VIEW"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLockedSdocType(I)Z

    move-result p1

    const-string v0, "action_verify_from_other_apps"

    if-eqz p1, :cond_6

    const/16 p1, 0x385

    :goto_3
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    :cond_6
    const/4 p1, 0x5

    if-ne v3, p1, :cond_7

    const/16 p1, 0x64

    goto :goto_3

    :cond_7
    if-le v3, v7, :cond_8

    const/16 p1, 0x6e

    goto :goto_3

    :cond_8
    :goto_4
    return v2

    :cond_9
    :goto_5
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/samsung/android/support/senl/nt/app/R$string;->no_notes:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return v2
.end method

.method private setStrictMode()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/framework/support/DeveloperMode;->isOnDeveloperMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    :cond_0
    return-void
.end method

.method private startConverterActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.app.notes.ACTION_OPEN_MEMO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sdoc_uuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "highlighttext"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Landroid/content/ComponentName;

    const-class p2, Lcom/samsung/android/support/senl/nt/app/trigger/OpaqueDocOpenTriggerActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public changedGcsEnableStatus()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->changedGcsEnableStatus()V

    return-void
.end method

.method public closeDrawer(ZI)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->closeDrawer(ZI)Z

    move-result p1

    return p1
.end method

.method public closeOtherAppsFromNoteList()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NotesFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->closeOtherAppsFromNoteList()V

    :cond_0
    return-void
.end method

.method public dragAndDropFinished(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NotesFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->dragAndDropFinished(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public initFolderDataMap()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NotesFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->initFolderDataMap()V

    :cond_0
    return-void
.end method

.method public isRunningAnimator()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->isRunningAnimator()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    const/16 p3, 0x33

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const-string v0, "NotesFragment"

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onBackPressed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->controllIndicatorBar(Landroid/app/Activity;I)Z

    iget-object p1, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->needViewChange()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->swapLayoutMode(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->isTabletLayoutMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/PhoneMainView;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/TabletMainView;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->createView(Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;ZILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onViewChangeRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    const-string p1, "MemoListActivity"

    const-string v0, "onConfigurationChanged# do not need viewChange, mMainView is null or LayoutMode is not changed or notesFragment is not added"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "VerificationLog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->setStrictMode()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->needToClearAppData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->needToClearAppData()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/notes/memolist/NoticeUTActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "update"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v0}, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->handleBixbyAppLink(Landroid/content/Intent;)I

    move-result v4

    const-string v5, "fromVoiceNotification"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "MemoListActivity"

    if-eqz v3, :cond_1

    const-string p1, "onCreate# MemoListActivity is called from voice notification. this is temp code to support composer"

    invoke-static {v5, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ComposerManager;->findRecordingTaskId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->moveToFront(Landroid/content/Context;I)Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v4, :cond_2

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "onCreate# isTaskRoot finish"

    invoke-static {v5, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0, v1, v2, v4}, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->getCallerThroughAction(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->executeAppUpdate()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p1, "onCreate#executeAppUpdate - start()"

    invoke-static {v5, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate# caller : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->createMainView(Landroid/os/Bundle;Landroid/os/Bundle;I)V

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->goToExecuteTypeActivity(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->launchEditorByIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->controllIndicatorBar(Landroid/app/Activity;I)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onDestroy()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteListActivityBixby2;->getInstance()Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteListActivityBixby2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/Bixby2$NoteListActivityBixby2;->release()V

    invoke-static {}, Lcom/samsung/android/support/notes/bixby/BixbyManager;->getInstance()Lcom/samsung/android/support/notes/bixby/BixbyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/notes/bixby/BixbyManager;->releaseNoteListActivity()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onExecuteItemSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onExecuteItemSelected(I)V

    return-void
.end method

.method public onFolderDeleteVerifySuccess()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onFolderDeleteVerifySuccess()V

    return-void
.end method

.method public onFolderSelected(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onFolderSelected(Ljava/lang/String;)V

    return-void
.end method

.method public onFoldersDataMove(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onFoldersDataMove(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public onImportPdf(Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onImportPdf(Ljava/lang/String;ILjava/util/List;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "NotesFragment"

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, "NotesFragment"

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsAppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onModeChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onModeChanged(I)V

    return-void
.end method

.method public onNewCoeditNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onNewCoeditNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 8

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent# action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MemoListActivity"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v3, "NotesFragment"

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->handleBixbyAppLink(Landroid/content/Intent;)I

    move-result v3

    const/16 v4, 0x3e9

    const/4 v5, 0x5

    if-ne v3, v4, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->openNoteByBixby(Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v4

    if-ne v4, v5, :cond_2

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->openLockedNoteByBixby(ILandroid/os/Bundle;)V

    return-void

    :cond_2
    const-string/jumbo v3, "update"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v6, "sdoc_uuid"

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->setLastOpenedSDocXUuid(Ljava/lang/String;)V

    :cond_3
    const-string v3, "intent_extra_task_relaunch"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->relaunchedActivity(Landroid/app/Activity;)V

    :cond_4
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v6}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const-string v6, "preferenceUpdated"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->isActivityRunning(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "Recreate activity because of updated preference"

    invoke-static {v2, v6}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_5
    if-eqz v1, :cond_f

    if-nez v0, :cond_6

    goto/16 :goto_3

    :cond_6
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    sparse-switch v6, :sswitch_data_0

    :goto_0
    move v5, v2

    goto :goto_1

    :sswitch_0
    const-string v5, "android.intent.action.SEARCH"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x6

    goto :goto_1

    :sswitch_1
    const-string v6, "com.samsung.android.app.notes.coedit.action.COEDIT_START"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :sswitch_2
    const-string v5, "action_import_samsung_notes"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v5, 0x4

    goto :goto_1

    :sswitch_3
    const-string v5, "action_open_converted_sdoc"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_4
    const-string v5, "action_import_notes"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_5
    const-string v5, "com.samsung.android.action.MDE_START_NOTES_BY_MEET_URL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    move v5, v7

    goto :goto_1

    :sswitch_6
    const-string v5, "action_convert_sdoc_from_settings"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    move v5, v4

    :cond_d
    :goto_1
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQueryParser;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQueryParser;-><init>()V

    const-string v2, "query"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/database/core/query/search/RegexSearchQueryParser;->findUnspecifiedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->showSearchMode(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants;->SES_GROUP_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants;->SES_SPACE_ID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/app/main/common/GcsConstants;->SES_GROUP_NAME:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->startLandingInvitationLinkAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->addImportSamsungNoteTipCard()V

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    if-eqz v0, :cond_e

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;-><init>()V

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object v0

    const-string v1, "category_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setFolderUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object v0

    const-string v1, "doc_path"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setFilePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object v0

    const-string v1, "lock_account_guid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setGuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setLockType(I)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setModeIndex(I)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object v0

    const-string/jumbo v1, "tool_type"

    invoke-virtual {p1, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->setToolType(I)Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam$Builder;->build()Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V

    goto :goto_2

    :pswitch_4
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->addImportDownloadingTipCard()V

    goto :goto_2

    :pswitch_5
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->startLiveSharingNotes()V

    goto :goto_2

    :pswitch_6
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->startConvertNotes()V

    :cond_e
    :goto_2
    return-void

    :cond_f
    :goto_3
    const-string p1, "onNewIntent# NotesFragment or action is null"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x31dc4c0d -> :sswitch_6
        -0x20e71ea5 -> :sswitch_5
        0x23d74910 -> :sswitch_4
        0x2462a57e -> :sswitch_3
        0x67ab498b -> :sswitch_2
        0x68435fd3 -> :sswitch_1
        0x7b497aad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNewNote(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onNewNote(Ljava/lang/String;I)V

    return-void
.end method

.method public onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onNoteSelected(Lcom/samsung/android/support/senl/nt/app/main/common/data/MainEntryParam;)V

    return-void
.end method

.method public onNotesDataMove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->onNotesDataMove(Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NotesFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setDrawerIconDimDragStatus(ZLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->setDrawerIconDimDragStatus(ZLjava/util/ArrayList;)V

    return-void
.end method

.method public setDrawerTitleBold(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->setDrawerTitleBold(Ljava/lang/String;)V

    return-void
.end method

.method public updateDocumentCountMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/NotesDocumentCountEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;->mMainView:Lcom/samsung/android/support/senl/nt/app/main/MainView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/MainView;->updateDocumentCountMap(Ljava/util/Map;)V

    return-void
.end method

.method public updateNoteViewByDrawerObserver()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NotesFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->updateNoteViewByDrawerObserver()V

    :cond_0
    return-void
.end method

.method public verifyForDelete()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "NotesFragment"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/NotesFragment;->verifyForDelete()V

    :cond_0
    return-void
.end method
