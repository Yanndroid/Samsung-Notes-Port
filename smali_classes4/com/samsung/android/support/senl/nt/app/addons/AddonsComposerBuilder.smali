.class public Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AddonsComposerBuilder"


# instance fields
.field private final mEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddonsComposerBuilder, entity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AddonsComposerBuilder"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->initComposerIntent(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->setDocumentData()V

    return-void
.end method

.method private buildAllEnabledMDEComposer(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.notes.addons"

    const-string v3, "com.samsung.android.support.senl.nt.app.nativecomposer.ComposerActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/addons/stub/StubUtil;->getVersionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2.1.1.2"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->compareVersionName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/data/ArgMdeInfo;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeSpaceId()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeGroupId()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeOwnerId()Ljava/lang/String;

    move-result-object v5

    move-object v2, v1

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/composer/data/ArgMdeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "mde_info"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeSpaceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mde_space_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeGroupId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mde_group_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeOwnerId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mde_owner_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "account_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "writer_name"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method private buildAllEnabledMDEComposer(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->buildAllEnabledMDEComposer(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private buildAllEnabledRecycleBinComposer()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.notes.addons"

    const-string v3, "com.samsung.android.support.senl.nt.app.nativecomposer.RecycleBinActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private copySettingBooleanValue(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "Settings"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private getCategoryColorForAddons(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)I
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$color;->category_mark_color_screen_off_memo:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$color;->category_mark_color_background_uncategorized:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayNameColor()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCategoryColorForAddons prev color : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AddonsComposerBuilder"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return p1
.end method

.method private getTranslatedCategoryName(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->uncategorised:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getUuid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->string_screen_off_memo:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initComposerIntent(I)V
    .locals 2

    const/4 v0, 0x3

    const-string v1, "test"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->buildAllEnabledMDEComposer(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mIntent:Landroid/content/Intent;

    goto :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->buildAllEnabledRecycleBinComposer()Landroid/content/Intent;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_2
    return-void
.end method

.method private setDocumentData()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mIntent:Landroid/content/Intent;

    new-instance v1, Lcom/samsung/android/support/senl/nt/data/repository/converter/DocumentEntityConverter;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/data/repository/converter/DocumentEntityConverter;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/data/repository/converter/DocumentEntityConverter;->convert(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "addons_document_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method

.method private setGroupSharingUserName()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->m(I)V

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/d;->b()Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/d;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/d;->a(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/c;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mEntity:Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getMdeOwnerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/notes/sync/contentsharing/sesdb/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->n(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    move-object v1, v2

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "AddonsComposerBuilder"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->n(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;->L()Lcom/samsung/android/app/notes/sync/contentsharing/sessession/k;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/app/notes/sync/contentsharing/sessession/SesSessionBase;->n(ILcom/samsung/android/support/senl/nt/base/common/sync/SesUiListener;)V

    throw v2

    :cond_1
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mIntent:Landroid/content/Intent;

    const-string v2, "arg_group_sharing_user_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method private setSettingValues()V
    .locals 3

    const-string v0, "settings_show_links_in_notes"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->copySettingBooleanValue(Ljava/lang/String;Z)V

    const-string v0, "settings_show_web_previews"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->copySettingBooleanValue(Ljava/lang/String;Z)V

    const-string v0, "settings_action_icons"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->copySettingBooleanValue(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->setGroupSharingUserName()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->setSettingValues()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "caller_new_notes"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public setCategoryInfo(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->getTranslatedCategoryName(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "addons_document_category_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->getCategoryColorForAddons(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)I

    move-result p1

    const-string v1, "addons_document_category_color"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method public setConvertingEnabled(Z)Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "addons_convert_sdocx"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setData(Landroid/net/Uri;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "application/sdoc"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setHashTagData(Ljava/util/List;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/base/common/tag/HashTagData;",
            ">;)",
            "Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "addons_document_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/repository/converter/HashtagDataConverter;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/data/repository/converter/HashtagDataConverter;-><init>()V

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/senl/nt/data/repository/converter/HashtagDataConverter;->convert(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "addons_document_data_hashtag"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-object p0
.end method

.method public setHighLightText(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "highlighttext"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method public setLockInfo(Z)Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "addons_is_locked"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setPaths(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "addons_document_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mIntent:Landroid/content/Intent;

    const-string v0, "addons_copied_document_path"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "addons_document_uuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method
