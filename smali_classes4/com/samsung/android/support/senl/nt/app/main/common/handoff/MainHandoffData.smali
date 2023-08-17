.class public Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData$HandoffDataBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainHandoffData"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mActionType:Ljava/lang/String;

.field private mActivityType:Ljava/lang/String;

.field private mCategoryUuid:Ljava/lang/String;

.field private mFolderUuid:Ljava/lang/String;

.field private mGroupId:Ljava/lang/String;

.field private mIsSyncEnabledOnSender:Z

.field private mSearchText:Ljava/lang/String;

.field private mSelectedTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpaceId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActivityType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActionType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mFolderUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSelectedTags:Ljava/util/Set;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mCategoryUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mGroupId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSpaceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSearchText:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mIsSyncEnabledOnSender:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->setSyncEnabledOnSender(Z)V

    return-void
.end method

.method private setSyncEnabledOnSender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mIsSyncEnabledOnSender:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "MainHandoffData"

    const-string v0, "equals() ClassCastException"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    check-cast p1, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActivityType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActivityType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActionType:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v2, p1, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActionType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mIsSyncEnabledOnSender:Z

    iget-boolean v2, p1, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mIsSyncEnabledOnSender:Z

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActionType:Ljava/lang/String;

    const-string v2, "folder_move"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mFolderUuid:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mFolderUuid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActionType:Ljava/lang/String;

    const-string v3, "tag_note"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSelectedTags:Ljava/util/Set;

    if-eqz v0, :cond_6

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSelectedTags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v1, v2

    :cond_6
    return v1

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActionType:Ljava/lang/String;

    const-string v3, "old_note"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mCategoryUuid:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mCategoryUuid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    move v1, v2

    :cond_8
    return v1

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActionType:Ljava/lang/String;

    const-string v3, "gcs_note"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mGroupId:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v3, p1, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSpaceId:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSpaceId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    move v1, v2

    :cond_a
    return v1

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActionType:Ljava/lang/String;

    const-string v3, "search"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSearchText:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSearchText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    move v1, v2

    :cond_c
    return v1

    :cond_d
    return v2
.end method

.method public getActionType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActionType:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActivityType:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mCategoryUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderUuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mFolderUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSearchText:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSelectedTags:Ljava/util/Set;

    return-object v0
.end method

.method public getSpaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSpaceId:Ljava/lang/String;

    return-object v0
.end method

.method public isSameAction(Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActionType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActionType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSyncEnabledOnSender()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mIsSyncEnabledOnSender:Z

    return v0
.end method

.method public serSearchText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSearchText:Ljava/lang/String;

    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActionType:Ljava/lang/String;

    return-void
.end method

.method public setActivityType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActivityType:Ljava/lang/String;

    return-void
.end method

.method public setCategoryUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mCategoryUuid:Ljava/lang/String;

    return-void
.end method

.method public setFolderUuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mFolderUuid:Ljava/lang/String;

    return-void
.end method

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mGroupId:Ljava/lang/String;

    return-void
.end method

.method public setSelectedTags(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSelectedTags:Ljava/util/Set;

    return-void
.end method

.method public setSpaceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSpaceId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActivityType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x9

    if-nez v1, :cond_0

    const-string v1, " activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActivityType:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActionType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mActionType:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, " syncEnabledOnSender: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mIsSyncEnabledOnSender:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mFolderUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " folderUuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mFolderUuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSelectedTags:Ljava/util/Set;

    if-eqz v1, :cond_3

    const-string v1, " selectedTags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSelectedTags:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mCategoryUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, " categoryUuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mCategoryUuid:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mGroupId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, " groupId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mGroupId:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSpaceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, " spaceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSpaceId:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSearchText:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, " search: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/handoff/MainHandoffData;->mSearchText:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
